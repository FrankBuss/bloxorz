using System;
using Microsoft.Xna.Framework.Audio;

namespace VecxMonoGame.Common
{
	public class E8910
	{   //AY-3-8910
	    //code adapted from: https://github.com/jhawthorn/vecx/blob/master/e8910.c
		//by example: http://www.david-gouveia.com/creating-a-basic-synth-in-xna-part-ii
		DynamicSoundEffectInstance instance;
		public int buflength = 22050 / 30;

		int MAX_OUTPUT = 0x0fff;
		const int STEP3 = 1;
		const int STEP = 2;

		//int[] snd_regs = new int[16];

		//int index;
		int ready;
		int[] Regs = new int[16];
		int lastEnable;
		int PeriodA, PeriodB, PeriodC, PeriodN, PeriodE;
		int CountA, CountB, CountC, CountN, CountE;
		UInt32 VolA, VolB, VolC, VolE;
		byte EnvelopeA, EnvelopeB, EnvelopeC;
		byte OutputA, OutputB, OutputC, OutputN;
		SByte CountEnv;
		byte Hold, Alternate, Attack, Holding;
		int RNG;
		UInt32[] VolTable = new UInt32[32];

		const int AY_AFINE = 0;
		const int AY_ACOARSE = 1;
		const int AY_BFINE = 2;
		const int AY_BCOARSE = 3;
		const int AY_CFINE = 4;
		const int AY_CCOARSE = 5;
		const int AY_NOISEPER = 6;
		const int AY_ENABLE = 7;
		const int AY_AVOL = 8;
		const int AY_BVOL = 9;
		const int AY_CVOL = 10;
		const int AY_EFINE = 11;
		const int AY_ECOARSE = 12;
		const int AY_ESHAPE = 13;
		const int AY_PORTA = 14;
		const int AY_PORTB = 15;

		public E8910()
		{
		}

		public void init_sound()
		{
			e8910_init_sound();
		}

		public void done_sound()
		{
			e8910_done_sound();
		}

		public void write(int r, int v)
		{
			e8910_write(r, v);
		}

		void e8910_write(int r, int v)
		{
			int old;

			if (Regs == null) return;
			Regs[r] = v;
            
			/* A note about the period of tones, noise and envelope: for speed reasons,*/
			/* we count down from the period to 0, but careful studies of the chip     */
			/* output prove that it instead counts up from 0 until the counter becomes */
			/* greater or equal to the period. This is an important difference when the*/
			/* program is rapidly changing the period to modulate the sound.           */
			/* To compensate for the difference, when the period is changed we adjust  */
			/* our internal counter.                                                   */
			/* Also, note that period = 0 is the same as period = 1. This is mentioned */
			/* in the YM2203 data sheets. However, this does NOT apply to the Envelope */
			/* period. In that case, period = 0 is half as period = 1. */
			switch (r)
			{
				case AY_AFINE:
				case AY_ACOARSE:
					Regs[AY_ACOARSE] &= 0x0f;
					old = PeriodA;
					PeriodA = (Regs[AY_AFINE] + 256 * Regs[AY_ACOARSE]) * STEP3;
					if (PeriodA == 0) PeriodA = STEP3;
					CountA += PeriodA - old;
					if (CountA <= 0) CountA = 1;
					break;
				case AY_BFINE:
				case AY_BCOARSE:
					Regs[AY_BCOARSE] &= 0x0f;
					old = PeriodB;
					PeriodB = (Regs[AY_BFINE] + 256 * Regs[AY_BCOARSE]) * STEP3;
					if (PeriodB == 0) PeriodB = STEP3;
					CountB += PeriodB - old;
					if (CountB <= 0) CountB = 1;
					break;
				case AY_CFINE:
				case AY_CCOARSE:
					Regs[AY_CCOARSE] &= 0x0f;
					old = PeriodC;
					PeriodC = (Regs[AY_CFINE] + 256 * Regs[AY_CCOARSE]) * STEP3;
					if (PeriodC == 0) PeriodC = STEP3;
					CountC += PeriodC - old;
					if (CountC <= 0) CountC = 1;
					break;
				case AY_NOISEPER:
					Regs[AY_NOISEPER] &= 0x1f;
					old = PeriodN;
					PeriodN = Regs[AY_NOISEPER] * STEP3;
					if (PeriodN == 0) PeriodN = STEP3;
					CountN += PeriodN - old;
					if (CountN <= 0) CountN = 1;
					break;
				case AY_ENABLE:
					lastEnable = Regs[AY_ENABLE];
					break;
				case AY_AVOL:
					Regs[AY_AVOL] &= 0x1f;
					EnvelopeA = (byte)(Regs[AY_AVOL] & 0x10);
					VolA = EnvelopeA != 0 ? VolE : VolTable[Regs[AY_AVOL] != 0 ? Regs[AY_AVOL] * 2 + 1 : 0];
					break;
				case AY_BVOL:
					Regs[AY_BVOL] &= 0x1f;
					EnvelopeB = (byte)(Regs[AY_BVOL] & 0x10);
					VolB = EnvelopeB != 0 ? VolE : VolTable[Regs[AY_BVOL] != 0 ? Regs[AY_BVOL] * 2 + 1 : 0];
					break;
				case AY_CVOL:
					Regs[AY_CVOL] &= 0x1f;
					EnvelopeC = (byte)(Regs[AY_CVOL] & 0x10);
					VolC = EnvelopeC != 0 ? VolE : VolTable[Regs[AY_CVOL] != 0 ? Regs[AY_CVOL] * 2 + 1 : 0];
					break;
				case AY_EFINE:
				case AY_ECOARSE:
					old = PeriodE;
					PeriodE = ((Regs[AY_EFINE] + 256 * Regs[AY_ECOARSE])) * STEP3;
					//if (PeriodE == 0) PeriodE = STEP3 / 2;
					if (PeriodE == 0) PeriodE = STEP3;
					CountE += PeriodE - old;
					if (CountE <= 0) CountE = 1;
					break;
				case AY_ESHAPE:
					/* envelope shapes:
                    C AtAlH
                    0 0 x x  \___

                    0 1 x x  /___

                    1 0 0 0  \\\\

                    1 0 0 1  \___

                    1 0 1 0  \/\/
                              ___
                    1 0 1 1  \

                    1 1 0 0  ////
                              ___
                    1 1 0 1  /

                    1 1 1 0  /\/\

                    1 1 1 1  /___

                    The envelope counter on the AY-3-8910 has 16 steps. On the YM2149 it
                    has twice the steps, happening twice as fast. Since the end result is
                    just a smoother curve, we always use the YM2149 behaviour.
                    */
					Regs[AY_ESHAPE] &= 0x0f;
					Attack = (byte)((Regs[AY_ESHAPE] & 0x04) != 0 ? 0x1f : 0x00);
					if ((Regs[AY_ESHAPE] & 0x08) == 0)
					{
						/* if Continue = 0, map the shape to the equivalent one which has Continue = 1 */
						Hold = 1;
						Alternate = Attack;
					}
					else
					{
						Hold = (byte)(Regs[AY_ESHAPE] & 0x01);
						Alternate = (byte)(Regs[AY_ESHAPE] & 0x02);
					}
					CountE = PeriodE;
					CountEnv = 0x1f;
					Holding = 0;
					VolE = VolTable[CountEnv ^ Attack];
					if (EnvelopeA != 0) VolA = VolE;
					if (EnvelopeB != 0) VolB = VolE;
					if (EnvelopeC != 0) VolC = VolE;
					break;
				case AY_PORTA:
					break;
				case AY_PORTB:
					break;
			}
		}

		void e8910_callback(/*void* userdata, Uint8* stream, int length*/)
		{
			int length = buflength;
            //#define STEP2 length
			int STEP2 = length;

			//(void)userdata;

			int outn;
			//Uint8* buf1 = stream;
			int buf1 = 0;


			length = length * 2;

            byte[] buf = new byte[length];
         
            /* hack to prevent us from hanging when starting filtered outputs */
            if (ready == 0)
            {
				instance.SubmitBuffer(buf); //memset(stream, 0, length * sizeof(*stream));
                return;
            }

			/* The 8910 has three outputs, each output is the mix of one of the three */
			/* tone generators and of the (single) noise generator. The two are mixed */
			/* BEFORE going into the DAC. The formula to mix each channel is: */
			/* (ToneOn | ToneDisable) & (NoiseOn | NoiseDisable). */
			/* Note that this means that if both tone and noise are disabled, the output */
			/* is 1, not 0, and can be modulated changing the volume. */


			/* If the channels are disabled, set their output to 1, and increase the */
			/* counter, if necessary, so they will not be inverted during this update. */
			/* Setting the output to 1 is necessary because a disabled channel is locked */
			/* into the ON state (see above); and it has no effect if the volume is 0. */
			/* If the volume is 0, increase the counter, but don't touch the output. */
			if ((Regs[AY_ENABLE] & 0x01) != 0)
			{
				if (CountA <= STEP2) CountA += STEP2;
				OutputA = 1;
			}
			else if (Regs[AY_AVOL] == 0)
			{
				/* note that I do count += length, NOT count = length + 1. You might think */
				/* it's the same since the volume is 0, but doing the latter could cause */
				/* interferencies when the program is rapidly modulating the volume. */
				if (CountA <= STEP2) CountA += STEP2;
			}
			if ((Regs[AY_ENABLE] & 0x02) != 0)
			{
				if (CountB <= STEP2) CountB += STEP2;
				OutputB = 1;
			}
			else if (Regs[AY_BVOL] == 0)
			{
				if (CountB <= STEP2) CountB += STEP2;
			}
			if ((Regs[AY_ENABLE] & 0x04) != 0)
			{
				if (CountC <= STEP2) CountC += STEP2;
				OutputC = 1;
			}
			else if (Regs[AY_CVOL] == 0)
			{
				if (CountC <= STEP2) CountC += STEP2;
			}

			/* for the noise channel we must not touch OutputN - it's also not necessary */
			/* since we use outn. */
			if ((Regs[AY_ENABLE] & 0x38) == 0x38)   /* all off */
				if (CountN <= STEP2) CountN += STEP2;

			outn = (OutputN | Regs[AY_ENABLE]);

			/* buffering loop */
			while (length > 0)
			{
				int vol;
				int left = 2;
				/* vola, volb and volc keep track of how long each square wave stays */
				/* in the 1 position during the sample period. */

				int vola, volb, volc;
				vola = volb = volc = 0;

				do
				{
					int nextevent;

					if (CountN < left) nextevent = CountN;
					else nextevent = left;

					if ((outn & 0x08) != 0)
					{
						if (OutputA != 0) vola += CountA;
						CountA -= nextevent;
						/* PeriodA is the half period of the square wave. Here, in each */
						/* loop I add PeriodA twice, so that at the end of the loop the */
						/* square wave is in the same status (0 or 1) it was at the start. */
						/* vola is also incremented by PeriodA, since the wave has been 1 */
						/* exactly half of the time, regardless of the initial position. */
						/* If we exit the loop in the middle, OutputA has to be inverted */
						/* and vola incremented only if the exit status of the square */
						/* wave is 1. */
						while (CountA <= 0)
						{
							CountA += PeriodA;
							if (CountA > 0)
							{
								OutputA ^= 1;
								if (OutputA != 0) vola += PeriodA;
								break;
							}
							CountA += PeriodA;
							vola += PeriodA;
						}
						if (OutputA != 0) vola -= CountA;
					}
					else
					{
						CountA -= nextevent;
						while (CountA <= 0)
						{
							CountA += PeriodA;
							if (CountA > 0)
							{
								OutputA ^= 1;
								break;
							}
							CountA += PeriodA;
						}
					}

					if ((outn & 0x10) != 0)
					{
						if ((OutputB) != 0) volb += CountB;
						CountB -= nextevent;
						while (CountB <= 0)
						{
							CountB += PeriodB;
							if (CountB > 0)
							{
								OutputB ^= 1;
								if ((OutputB) != 0) volb += PeriodB;
								break;
							}
							CountB += PeriodB;
							volb += PeriodB;
						}
						if ((OutputB) != 0) volb -= CountB;
					}
					else
					{
						CountB -= nextevent;
						while (CountB <= 0)
						{
							CountB += PeriodB;
							if (CountB > 0)
							{
								OutputB ^= 1;
								break;
							}
							CountB += PeriodB;
						}
					}

					if ((outn & 0x20) != 0)
					{
						if ((OutputC) != 0) volc += CountC;
						CountC -= nextevent;
						while (CountC <= 0)
						{
							CountC += PeriodC;
							if (CountC > 0)
							{
								OutputC ^= 1;
								if ((OutputC) != 0) volc += PeriodC;
								break;
							}
							CountC += PeriodC;
							volc += PeriodC;
						}
						if ((OutputC) != 0) volc -= CountC;
					}
					else
					{
						CountC -= nextevent;
						while (CountC <= 0)
						{
							CountC += PeriodC;
							if (CountC > 0)
							{
								OutputC ^= 1;
								break;
							}
							CountC += PeriodC;
						}
					}

					CountN -= nextevent;
					if (CountN <= 0)
					{
						/* Is noise output going to change? */
						if (((RNG + 1) & 2) != 0)  /* (bit0^bit1)? */
						{
							OutputN = (byte)~OutputN;
							outn = (OutputN | Regs[AY_ENABLE]);
						}

						/* The Random Number Generator of the 8910 is a 17-bit shift */
						/* register. The input to the shift register is bit0 XOR bit3 */
						/* (bit0 is the output). This was verified on AY-3-8910 and YM2149 chips. */

						/* The following is a fast way to compute bit17 = bit0^bit3. */
						/* Instead of doing all the logic operations, we only check */
						/* bit0, relying on the fact that after three shifts of the */
						/* register, what now is bit3 will become bit0, and will */
						/* invert, if necessary, bit14, which previously was bit17. */
						if ((RNG & 1) != 0) RNG ^= 0x24000; /* This version is called the "Galois configuration". */
						RNG >>= 1;
						CountN += PeriodN;
					}

					left -= nextevent;
				} while (left > 0);

				/* update envelope */
				if (Holding == 0)
				{
					CountE -= STEP;
					if (CountE <= 0)
					{
						do
						{
							CountEnv--;
							CountE += PeriodE;
						} while (CountE <= 0);

						/* check envelope current position */
						if (CountEnv < 0)
						{
							if (Hold != 0)
							{
								if (Alternate != 0)
									Attack ^= 0x1f;
								Holding = 1;
								CountEnv = 0;
							}
							else
							{
								/* if CountEnv has looped an odd number of times (usually 1), */
								/* invert the output. */
								if (Alternate != 0 && (CountEnv & 0x20) != 0)
									Attack ^= 0x1f;

								CountEnv &= 0x1f;
							}
						}

						VolE = VolTable[CountEnv ^ Attack];
						/* reload volume */
						if (EnvelopeA != 0) VolA = VolE;
						if (EnvelopeB != 0) VolB = VolE;
						if (EnvelopeC != 0) VolC = VolE;
					}
				}

				vol = (int)((vola * VolA + volb * VolB + volc * VolC) / (3 * STEP));
				if ((--length & 1) != 0) buf[buf1++] = (byte)(vol >> 8);
			}
			instance.SubmitBuffer(buf);
		}


		void e8910_build_mixer_table()
		{
			int i;
			double outval;

			/* calculate the volume->voltage conversion table */
			/* The AY-3-8910 has 16 levels, in a logarithmic scale (3dB per STEP) */
			/* The YM2149 still has 16 levels for the tone generators, but 32 for */
			/* the envelope generator (1.5dB per STEP). */
			outval = MAX_OUTPUT;
			for (i = 31; i > 0; i--)
			{
				VolTable[i] = (UInt32)(outval + 0.5); /* round to nearest */
				outval /= 1.188502227; /* = 10 ^ (1.5/20) = 1.5dB */
			}
			VolTable[0] = 0;
		}

		void e8910_init_sound()
		{
			RNG = 1;
			OutputA = 0;
			OutputB = 0;
			OutputC = 0;
			OutputN = 0xff;
			e8910_build_mixer_table();
			ready = 1;
            instance = new DynamicSoundEffectInstance(22000,AudioChannels.Mono);
			instance.BufferNeeded += onBufferNeeded;
			instance.Play();
		}

		void onBufferNeeded(object sender, EventArgs e)
        {
			e8910_callback();
        }

		void e8910_done_sound()
		{
			if (instance != null) instance.Dispose();
		}
	}
}
