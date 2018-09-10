namespace VecxMonoGame.Common
{
	public class CPUTest : CPUBus
	{
		byte[] mem;
		E6809 cpu;

		public CPUTest()
		{
			mem = new byte[65536];
			cpu = new E6809(this);
			System.Console.WriteLine("Hello World!");
			for (byte i = 0; i < 8; ++i) prg4_9(i);
		}

		public byte read8(ushort address)
		{
			return mem[address];
		}

		public void write8(ushort address, byte data)
		{
			mem[address] = data;
		}

		/*
		https://ia800307.us.archive.org/20/items/6809AssemblyLanguageProgramming/Leventhal-6809AssemblyLanguageProgramming_text.pdf
		Find the square root of a number between 0-7 via lookup table.
		Program 4-9:
			0000    D6  41          LDB     $41     GET DATA
			0002    8E  0050        LDX     #$50    GET BASE ADDRESS
			0005    A6  85          LDA     B,X     GET SQUARE OF DATA
			0007    97  42          STA     $42     STORE SQUARE
			0009    3F              SWI

			0050                    ORG     $50     TABLE OF SQUARES
			0050    00      SQTAB   FCB     0,1,4,9,16,25,36,49
			0051    01
			0052    04
			0053    09
			0054    10
			0055    19
			0056    24
			0057    31
		 */
		public void prg4_9(byte input)
		{
			mem[0x0000] = 0xD6;
			mem[0x0001] = 0x41;
			mem[0x0002] = 0x8E;
			mem[0x0003] = 0x00;
			mem[0x0004] = 0x50;
			mem[0x0005] = 0xA6;
			mem[0x0006] = 0x85;
			mem[0x0007] = 0x97;
			mem[0x0008] = 0x42;
			mem[0x0009] = 0x3F;

			mem[0x0041] = input;

			mem[0x0050] = 0x00;
			mem[0x0051] = 0x01;
			mem[0x0052] = 0x04;
			mem[0x0053] = 0x09;
			mem[0x0054] = 0x10;
			mem[0x0055] = 0x19;
			mem[0x0056] = 0x24;
			mem[0x0057] = 0x31;

			cpu.reset();
			System.Console.WriteLine("Input " + input);
			while (cpu.reg_pc != 0x0009)
			{
				int c = cpu.sstep(0, 0);
				System.Console.WriteLine("Cycled " + c);
			}
			System.Console.WriteLine("Output " + mem[0x0042]);
			System.Console.WriteLine("The square of " + input + " is " + mem[0x0042] + ".\n");
		}

	}
}
