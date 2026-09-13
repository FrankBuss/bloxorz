using System;
using System.Collections.Generic;
using Godot;

namespace Bloxorz
{
    public partial class Vecx : Node2D
    {
        public const int Button1 = 0, Button2 = 1, Button3 = 2, Button4 = 3, Left = 4, Right = 5, Up = 6, Down = 7;

        private static readonly StringName[] actions =
        {
            "vectrex_button1", "vectrex_button2", "vectrex_button3", "vectrex_button4",
            "vectrex_left", "vectrex_right", "vectrex_up", "vectrex_down",
        };

        // wav playback for the VECX_MUSIC commands, replaced by the AY emulation
        //private static readonly string[] soundNames = { "game-over", "level-end", "level-start", "move", "music" };

        // brightest vector color, values > 1 drive the glow of the WorldEnvironment
        [Export] public Color colormax = new Color(1.4f, 1.5f, 1.7f);
        // how long a key press or touch button press is held for the game, in seconds
        [Export] public double pressTime = 1 / 30.0;
        // gain of the AY-3-8910 output, 1 = all three channels at full volume give full scale
        [Export] public float psgVolume = 1.0f;

        public Vectrex vectrex = new Vectrex();
        public Vector2 gfxOff;
        public Vector2 gfxScl;
        public float ppi = 1; // pixels per (vectrex) inch
        public float linesize = 1;

        private readonly double[] pressTimers = new double[actions.Length];
        //private AudioStreamPlayer[] sounds;
        private AudioStreamPlayer psgPlayer;
        private AudioStreamGeneratorPlayback psgPlayback;

        private readonly HashSet<(long, long, long, long, byte)> drawnlines = new HashSet<(long, long, long, long, byte)>();
        private readonly List<Vector2> points = new List<Vector2>();
        private readonly List<Color> colors = new List<Color>();

        public override void _Ready()
        {
            Rom.LoadBios(vectrex);
            Rom.LoadCart(vectrex);

            vectrex.vecx_reset();

            vectrex.vecx_emu(vectrex.VECTREX_MHZ * 8); // skip intro
            vectrex.lines.Clear();
            vectrex.psg.sampleCount = 0;

            LoadContent();
        }

        private void LoadContent()
        {
            //sounds = new AudioStreamPlayer[soundNames.Length];
            //for (int i = 0; i < soundNames.Length; i++)
            //{
            //    sounds[i] = new AudioStreamPlayer { Stream = GD.Load<AudioStream>($"res://Sound/{soundNames[i]}.wav") };
            //    AddChild(sounds[i]);
            //}
            //vectrex.SoundCommand += OnSoundCommand;

            var generator = new AudioStreamGenerator
            {
                MixRateMode = AudioStreamGenerator.AudioStreamGeneratorMixRate.Custom,
                MixRate = E8910.SampleRate,
                BufferLength = 0.25f,
            };
            psgPlayer = new AudioStreamPlayer { Stream = generator };
            AddChild(psgPlayer);
            psgPlayer.Play();
            psgPlayback = (AudioStreamGeneratorPlayback)psgPlayer.GetStreamPlayback();

            // some silence as a cushion against frame time jitter
            psgPlayback.PushBuffer(new Vector2[E8910.SampleRate / 10]);
        }

        //private void OnSoundCommand(byte data)
        //{
        //    foreach (AudioStreamPlayer sound in sounds) sound.Stop();
        //    if (data < sounds.Length) sounds[data].Play();
        //}

        // called from InputTouch and for keyboard actions
        public void Press(int input)
        {
            pressTimers[input] = pressTime;
        }

        public override void _Process(double delta)
        {
            Control();

            long cycles = (long)(Math.Min(delta, 0.1) * vectrex.VECTREX_MHZ);
            vectrex.vecx_emu(cycles);
            PushPsgSamples();

            for (int i = 0; i < pressTimers.Length; i++) pressTimers[i] -= delta;

            QueueRedraw();
        }

        private void PushPsgSamples()
        {
            E8910 psg = vectrex.psg;
            int n = Math.Min(psg.sampleCount, psgPlayback.GetFramesAvailable());
            if (n > 0)
            {
                Vector2[] frames = new Vector2[n];
                for (int i = 0; i < n; i++)
                {
                    float s = Math.Clamp(psg.samples[i] * psgVolume, -1f, 1f);
                    frames[i] = new Vector2(s, s);
                }
                psgPlayback.PushBuffer(frames);
            }
            // samples which don't fit into the playback buffer are dropped
            psg.sampleCount = 0;
        }

        private void Control()
        {
            for (int i = 0; i < actions.Length; i++)
            {
                if (Input.IsActionJustPressed(actions[i])) Press(i);
            }

            int joyX = (Held(Right) ? 1 : 0) - (Held(Left) ? 1 : 0);
            int joyY = (Held(Up) ? 1 : 0) - (Held(Down) ? 1 : 0);

            byte joyx = 0x80;
            byte joyy = 0x80;

            // either/or logic
            if (Math.Abs(joyX) > Math.Abs(joyY))
            {
                joyx = joyX > 0 ? (byte)0xff : (byte)0x00;
            }
            else if (Math.Abs(joyX) < Math.Abs(joyY))
            {
                joyy = joyY > 0 ? (byte)0xff : (byte)0x00;
            }

            vectrex.button1(Held(Button1));
            vectrex.button2(Held(Button2));
            vectrex.button3(Held(Button3));
            vectrex.button4(Held(Button4));
            vectrex.joyx(joyx);
            vectrex.joyy(joyy);
        }

        // a short tap is held for pressTime, so the game sees it. The joystick directions also stay held
        // while the key is down, for the repeat function of the game. The game only reacts to new
        // button presses, so buttons don't need that.
        private bool Held(int input)
        {
            return pressTimers[input] > 0 || (input >= Left && Input.IsActionPressed(actions[input]));
        }

        private void UpdateLayout()
        {
            Vector2 size = GetViewportRect().Size;
            float w = size.X;
            float h = size.Y;

            float idealw = h / 11f * 9;

            if (w > idealw)
            {   // too wide
                gfxOff = new Vector2((w - idealw) / 2, 0);
                gfxScl = new Vector2(idealw / vectrex.ALG_MAX_X, h / vectrex.ALG_MAX_Y);
                ppi = idealw / 9;
            }
            else
            {   // too thin, or exactly 9:11
                float idealh = w / 9f * 11;
                gfxOff = new Vector2(0, (h - idealh) / 2);
                gfxScl = new Vector2(w / vectrex.ALG_MAX_X, idealh / vectrex.ALG_MAX_Y);
                ppi = w / 9;
            }

            linesize = Math.Max(1, ppi / 64f);
        }

        public override void _Draw()
        {
            UpdateLayout();

            drawnlines.Clear();
            points.Clear();
            colors.Clear();

            foreach (VectorT vec in vectrex.vecx_lines())
            {
                if (!drawnlines.Add((vec.x0, vec.y0, vec.x1, vec.y1, vec.color))) continue;

                Vector2 start = new Vector2(vec.x0 * gfxScl.X + gfxOff.X, vec.y0 * gfxScl.Y + gfxOff.Y);
                Vector2 end = new Vector2(vec.x1 * gfxScl.X + gfxOff.X, vec.y1 * gfxScl.Y + gfxOff.Y);
                if (start == end) end.X += linesize; // make dots visible

                float intensity = vec.color / 127f;
                points.Add(start);
                points.Add(end);
                colors.Add(new Color(colormax.R * intensity, colormax.G * intensity, colormax.B * intensity));
            }

            if (points.Count > 0)
            {
                DrawMultilineColors(points.ToArray(), colors.ToArray(), linesize, true);
            }
        }
    }
}
