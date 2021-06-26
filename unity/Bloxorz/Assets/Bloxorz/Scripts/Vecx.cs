using System;
using UnityEngine;
using System.Collections.Generic;

namespace Bloxorz
{
    public class Vecx : MonoBehaviour
    {
        public System.Random rand;
        public Vectrex vectrex;
        public Vector2 gfxOff;
        public Vector2 gfxScl;
        public int ppi = 1; // pixels per (vectrex) inch
        public float linesizemax = 3;
        public float linesizemin = 2;
        public Color colormax = new Color(220, 230, 255);
        public Color colormin = new Color(0, 15, 31);
        public Color[] colorPt = new Color[128];
        public float[] linesize = new float[128];
        public int dragThreshhold = 8;

        public bool _button1 = false, _button2 = false, _button3 = false, _button4 = false, _left = false, _right = false, _up = false, _down = false;

        private DrawLine draw;

        public void Start()
        {
            //int w = 576; // 9*64
            //int h = 704; // 11*64

            rand = new System.Random();
            draw = Camera.main.GetComponent<DrawLine>();

            Cursor.visible = true;

            HardcodedRom.getRom(vectrex);
            HardcodedRom.getCart(vectrex);

            vectrex.vecx_reset();

            vectrex.vecx_emu(vectrex.VECTREX_MHZ * 8); //4); // skip intro is * 10
            vectrex.lines.Clear();

            Window_ClientSizeChanged();
        }

        public void LoadContent()
        {
            AudioClip gameOver = Resources.Load<AudioClip>("Sound/game-over");
            vectrex.gameOver.clip = gameOver;
            AudioClip levelEnd = Resources.Load<AudioClip>("Sound/level-end");
            vectrex.levelEnd.clip = levelEnd;
            AudioClip levelStart = Resources.Load<AudioClip>("Sound/level-start");
            vectrex.levelStart.clip = levelStart;
            AudioClip move = Resources.Load<AudioClip>("Sound/move");
            vectrex.move.clip = move;
            AudioClip music = Resources.Load<AudioClip>("Sound/music");
            vectrex.music.clip = music;
        }

        void Window_ClientSizeChanged()
        {   // resize window
            int w = Screen.width;
            int h = Screen.height;

            int idealw = (int)(h / 11f * 9);
            ppi = w / 9;

            if (w > idealw)
            {   // too wide
                gfxOff.x = (w - idealw) / 2;
                gfxOff.y = 0;
                gfxScl.x = (float)idealw / vectrex.ALG_MAX_X;
                gfxScl.y = (float)h / vectrex.ALG_MAX_Y;
                ppi = idealw / 9;
            }
            else if (w < idealw)
            {   // too thin
                int idealh = (int)(w / 9f * 11);
                gfxOff.x = 0;
                gfxOff.y = (h - idealh) / 2;
                gfxScl.x = (float)w / vectrex.ALG_MAX_X;
                gfxScl.y = (float)idealh / vectrex.ALG_MAX_Y;
            }
            else
            {   // exactly 9:11, wow!
                gfxOff.x = 0;
                gfxOff.y = 0;
                gfxScl.x = (float)w / vectrex.ALG_MAX_X;
                gfxScl.y = (float)h / vectrex.ALG_MAX_Y;
            }

            linesizemin = ppi / 64f;
            if (linesizemin < 1) linesizemin = 1;
            linesizemax = ppi / 24f;
            if (linesizemax < 2) linesizemax = 2;

            //Debug.Log("ppi " + ppi + "\t" + linesizemin + "\t" + linesizemax);

            for (int i = 0; i < 128; ++i)
            {
                float lerp = i / 127f;
                linesize[i] = (float)Math.Round(Mathf.Lerp(linesizemin, linesizemax, lerp));
                colorPt[i] = Color.Lerp(colormin, colormax, lerp);
            }

            dragThreshhold = ppi / 6;
            if (dragThreshhold < 8) dragThreshhold = 8;
        }


        public void CustomUpdate()
        {
            Window_ClientSizeChanged();

            Control();

            long cycles = (long)((Time.smoothDeltaTime) * vectrex.VECTREX_MHZ);
            //Debug.Log("cycles = " + cycles);
            vectrex.vecx_emu(cycles);
        }

        public void Control()
        {
            bool button1, button2, button3, button4;
            Vector2 joy = new Vector2();
            button1 = !_button1 ? Input.GetKeyDown(KeyCode.Alpha1) || Input.GetKeyDown(KeyCode.J) : _button1;
            button2 = Input.GetKeyDown(KeyCode.Alpha2) || Input.GetKeyDown(KeyCode.K) || _button2;
            button3 = Input.GetKeyDown(KeyCode.Alpha3) || Input.GetKeyDown(KeyCode.L) || _button3;
            button4 = Input.GetKeyDown(KeyCode.Alpha4) || Input.GetKeyDown(KeyCode.Semicolon) || _button4;
            if (Input.GetKeyDown(KeyCode.LeftArrow) || Input.GetKeyDown(KeyCode.A) || _left) joy.x -= dragThreshhold;
            if (Input.GetKeyDown(KeyCode.RightArrow) || Input.GetKeyDown(KeyCode.D) || _right) joy.x += dragThreshhold;
            if (Input.GetKeyDown(KeyCode.UpArrow) || Input.GetKeyDown(KeyCode.W) || _up) joy.y += dragThreshhold;
            if (Input.GetKeyDown(KeyCode.DownArrow) || Input.GetKeyDown(KeyCode.S) || _down) joy.y -= dragThreshhold;

            byte joyx = 0x80;
            byte joyy = 0x80;

            // either/or logic
            if (Math.Abs(joy.x) > Math.Abs(joy.y))
            {
                if (joy.x >= dragThreshhold) joyx = 0xff;
                else if (joy.x <= -dragThreshhold) joyx = 0x00;
            }
            else if (Math.Abs(joy.x) < Math.Abs(joy.y))
            {
                if (joy.y >= dragThreshhold) joyy = 0xff;
                else if (joy.y <= -dragThreshhold) joyy = 0x00;
            }

            vectrex.button1(button1);
            vectrex.button2(button2);
            vectrex.button3(button3);
            vectrex.button4(button4);
            vectrex.joyx(joyx);
            vectrex.joyy(joyy);

            _button1 = false; _button2 = false; _button3 = false; _button4 = false; _left = false; _right = false; _up = false; _down = false;
        }

        static Queue<VectorT> lastLines = new Queue<VectorT>();
        public void Draw()
        {
            Queue<VectorT> lines = vectrex.vecx_lines(vectrex.VECTREX_MHZ / 12);
            if (lines.Count == 0)
            {
                lines = new Queue<VectorT>(lastLines);
            }
            lastLines = new Queue<VectorT>(lines);

            draw.starts.Clear();
            draw.ends.Clear();
            draw.colors.Clear();

            List<VectorT> drawnlines = new List<VectorT>();

            while (lines.Count > 0)
            {
                VectorT vec = lines.Dequeue();
                bool drawn = false;

                foreach (VectorT v in drawnlines)
                {
                    if (vec.x0 == v.x0 && vec.x1 == v.x1 && vec.y0 == v.y0 && vec.y1 == v.y1 && vec.color == v.color)
                    {
                        drawn = true;
                        break;
                    }
                }

                if (!drawn)
                {
                    drawnlines.Add(vec);

                    Vector2 start = new Vector2(vec.x0 * gfxScl.x + gfxOff.x, vec.y0 * gfxScl.y + gfxOff.y);
                    Vector2 end = new Vector2(vec.x1 * gfxScl.x + gfxOff.x, vec.y1 * gfxScl.y + gfxOff.y);

                    Color color = new Color32(vec.color, vec.color, vec.color, vec.color);
                    color.a = 1;

                    draw.starts.Add(start);
                    draw.ends.Add(end);
                    draw.colors.Add(color);
                }
            }
        }
    }
}
