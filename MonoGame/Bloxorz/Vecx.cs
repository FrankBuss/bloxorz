using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Input.Touch;
using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework.Audio;

namespace Bloxorz
{
    public class Vecx
    {
		public Game game;
        public GraphicsDeviceManager graphics;
        public BasicEffect basicEffect;
        public Texture2D brush;
        public Vector2[] brushPts = new Vector2[8];
        public Random rand;
        public Vectrex vectrex;
        public Vector2 gfxOff;
        public Vector2 gfxScl;
		public int ppi = 1; //pixels per (vectrex) inch
		public float linesizemax = 3;
		public float linesizemin = 2;
		public Color colormax = new Color(220,230,255);
        public Color colormin = new Color(0,15,31);
        public Color[] colorPt = new Color[128];
        public float[] linesize = new float[128];
		public int dragThreshhold = 8;
		public bool lastclick = false;
		public ClickBox clickBox;


        public Vecx(Game g)
        {
            int w = 576; //9*64
            int h = 704; //11*64
            rand = new Random();
			vectrex = new Vectrex();
            game = g;
            game.IsMouseVisible = true;
            graphics = new GraphicsDeviceManager(game);
            graphics.PreferredBackBufferWidth = w;
            graphics.PreferredBackBufferHeight = h;
            game.Content.RootDirectory = "Content";
            game.Window.AllowUserResizing = true;
            game.Window.ClientSizeChanged += Window_ClientSizeChanged;
        }


        public void Initialize()
        {
            basicEffect = new BasicEffect(game.GraphicsDevice);
            basicEffect.VertexColorEnabled = true;

            basicEffect.Texture = brush;
            basicEffect.TextureEnabled = true;
            brushPts[0] = Vector2.Zero;
            brushPts[1] = new Vector2(0.5f, 0);
            brushPts[2] = new Vector2(0.5f, 0);
            brushPts[3] = new Vector2(1, 0);
            brushPts[4] = new Vector2(0, 1);
            brushPts[5] = new Vector2(0.5f, 1);
            brushPts[6] = new Vector2(0.5f, 1);
            brushPts[7] = new Vector2(1, 1);

            TouchPanel.EnabledGestures = GestureType.Tap | GestureType.FreeDrag;
            clickBox = new ClickBox(this);
            //CPUTest test = new CPUTest();
            HardcodedRom.getRom(vectrex);
            HardcodedRom.getCart(vectrex);
            //HardcodedRom.getCart2018Jan(vectrex);

            vectrex.vecx_reset();

            vectrex.vecx_emu(vectrex.VECTREX_MHZ * 4); //skip intro is * 10
            vectrex.lines.Clear();

            Window_ClientSizeChanged(null, null);
        }

        public void LoadContent()
        {
            Window_ClientSizeChanged(null, null);

            SoundEffect gameOver = game.Content.Load<SoundEffect>("sound/game-over");
			vectrex.gameOver = gameOver.CreateInstance();
            SoundEffect levelEnd = game.Content.Load<SoundEffect>("sound/level-end");
            vectrex.levelEnd = levelEnd.CreateInstance();
            SoundEffect levelStart = game.Content.Load<SoundEffect>("sound/level-start");
            vectrex.levelStart = levelStart.CreateInstance();
            SoundEffect move = game.Content.Load<SoundEffect>("sound/move");
            vectrex.move = move.CreateInstance();
            SoundEffect music = game.Content.Load<SoundEffect>("sound/music");
            vectrex.music  = music .CreateInstance();

            brush = game.Content.Load<Texture2D>("brush");
        }

        public void UnloadContent()
        {
            vectrex.dispose();
            basicEffect.Dispose();
			graphics.Dispose();
        }

        void Window_ClientSizeChanged(object sender, EventArgs e)
        { //resize window
            int w = game.Window.ClientBounds.Width;
            int h = game.Window.ClientBounds.Height;
            
            if (basicEffect != null) basicEffect.Projection = Matrix.CreateOrthographicOffCenter (0, w, h, 0, 0, 1);

            int idealw = (int)(h / 11f * 9);
			ppi = w / 9;
            if (w > idealw)
            { //too wide
                gfxOff.X = (w - idealw) / 2;
                gfxOff.Y = 0;
                gfxScl.X = (float)idealw / vectrex.ALG_MAX_X;
                gfxScl.Y = (float)h / vectrex.ALG_MAX_Y;
				ppi = idealw / 9;
            }
            else if (w < idealw)
            { //too thin
                int idealh = (int)(w / 9f * 11);
                gfxOff.X = 0;
                gfxOff.Y = (h - idealh) / 2;
                gfxScl.X = (float)w / vectrex.ALG_MAX_X;
                gfxScl.Y = (float)idealh / vectrex.ALG_MAX_Y;
            }
            else
            { //exactly 9:11, wow!
                gfxOff.X = 0;
                gfxOff.Y = 0;
                gfxScl.X = (float)w / vectrex.ALG_MAX_X;
                gfxScl.Y = (float)h / vectrex.ALG_MAX_Y;
            }
            
            linesizemin = ppi / 64f;
			if (linesizemin < 1) linesizemin = 1;
            linesizemax = ppi / 24f;
            if (linesizemax < 2) linesizemax = 2;

			Console.WriteLine("ppi " + ppi + "\t" + linesizemin + "\t" + linesizemax);

			for (int i = 0; i < 128; ++i)
            {
                float lerp = i / 127f;
                linesize[i] = (float)Math.Round(MathHelper.Lerp(linesizemin, linesizemax, lerp));
				colorPt[i] = Color.Lerp(colormin, colormax, lerp);
			}

            dragThreshhold = ppi / 6;
            if (dragThreshhold < 8) dragThreshhold = 8;
            if (clickBox!=null) clickBox.Resize();
        }


        public void Update(GameTime gameTime)
        {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                game.Exit();
            bool button1, button2, button3, button4;
			Vector2 joy = new Vector2();
            button1 = Keyboard.GetState().IsKeyDown(Keys.D1) || Keyboard.GetState().IsKeyDown(Keys.J);
            button2 = Keyboard.GetState().IsKeyDown(Keys.D2) || Keyboard.GetState().IsKeyDown(Keys.K);
            button3 = Keyboard.GetState().IsKeyDown(Keys.D3) || Keyboard.GetState().IsKeyDown(Keys.L);
            button4 = Keyboard.GetState().IsKeyDown(Keys.D4) || Keyboard.GetState().IsKeyDown(Keys.OemSemicolon);
			if (Keyboard.GetState().IsKeyDown(Keys.Left) || Keyboard.GetState().IsKeyDown(Keys.A)) joy.X -= dragThreshhold;
			if (Keyboard.GetState().IsKeyDown(Keys.Right) || Keyboard.GetState().IsKeyDown(Keys.D)) joy.X += dragThreshhold;
			if (Keyboard.GetState().IsKeyDown(Keys.Up) || Keyboard.GetState().IsKeyDown(Keys.W)) joy.Y += dragThreshhold;
			if (Keyboard.GetState().IsKeyDown(Keys.Down) || Keyboard.GetState().IsKeyDown(Keys.S)) joy.Y -= dragThreshhold;

            MouseState mouse = Mouse.GetState();
            if (mouse.LeftButton == ButtonState.Pressed) lastclick = true;
            else
            {
                if (lastclick) mouseClick(mouse.Position);
                lastclick = false;
            }

            while (TouchPanel.IsGestureAvailable)
            {
                GestureSample gesture = TouchPanel.ReadGesture();
                switch (gesture.GestureType)
                {
                    case GestureType.Tap:
                        bool nothingElse = !mouseClick(gesture.Position.ToPoint()); //check for menu items
                        
                        if (nothingElse) button1 = button2 = button3 = button4 = true;
                        break;
					case GestureType.FreeDrag:
						joy.X = gesture.Delta.X;
						joy.Y = -gesture.Delta.Y;
                        //Console.WriteLine("hdrag " + gesture.Delta.X);
                        //Console.WriteLine("vdrag " + gesture.Delta.Y);
                        break;
                    default:
                        Console.WriteLine(gesture.ToString());
                        break;
                }
            }

			byte joyx = 0x80;
			byte joyy = 0x80;

            //either/or logic
			if (Math.Abs(joy.X) > Math.Abs(joy.Y))
			{
				if (joy.X >= dragThreshhold) joyx = 0xff;
				else if (joy.X <= -dragThreshhold) joyx = 0x00;
			}
			else if (Math.Abs(joy.X) < Math.Abs(joy.Y))
			{
                if (joy.Y >= dragThreshhold) joyy = 0xff;
                else if (joy.Y <= -dragThreshhold) joyy = 0x00;
			}

            vectrex.button1(button1);
            vectrex.button2(button2);
            vectrex.button3(button3);
            vectrex.button4(button4);
            vectrex.joyx(joyx);
            vectrex.joyy(joyy);

            long cycles = (long)(gameTime.ElapsedGameTime.TotalSeconds * vectrex.VECTREX_MHZ);
            //Console.WriteLine("cycles = " + cycles);
            vectrex.vecx_emu(cycles);
        }

        public bool mouseClick(Point p)
        {
            if (clickBox.rectangle.Contains(p))
            {
                clickBox.Click();
                return true;
            }
            //Console.WriteLine(p.ToString());
            return false;
        }

        public void Draw(GameTime gameTime)
        {
            basicEffect.CurrentTechnique.Passes[0].Apply();
            game.GraphicsDevice.BlendState = BlendState.Additive;
            game.GraphicsDevice.Clear(Color.Black);
            
            // TODO: 1 vsync = 40
			Queue<VectorT> lines = vectrex.vecx_lines(vectrex.VECTREX_MHZ / 10);
			//Console.WriteLine("lines.Count = " + lines.Count);
			List<VectorT> drawnlines = new List<VectorT>();
            while (lines.Count > 0)
            {
                VectorT vec = lines.Dequeue();
				//Console.WriteLine(vec.color);
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
					//Console.WriteLine(vec.color);
                    
					DrawLine(new Vector2(vec.x0 * gfxScl.X + gfxOff.X, vec.y0 * gfxScl.Y + gfxOff.Y),
								   new Vector2(vec.x1 * gfxScl.X + gfxOff.X, vec.y1 * gfxScl.Y + gfxOff.Y),
					         vec.color);
				}
            }

            clickBox.Draw(gameTime);

            /*
            DrawLine(new Vector2(128, 16), new Vector2(256, 16), 85);
            DrawLine(new Vector2(128, 32), new Vector2(256, 32), 99);
            DrawLine(new Vector2(128, 48), new Vector2(256, 48), 127);
            */
        }

        public void DrawLine(Vector2 point1, Vector2 point2, byte color)
        {
            if (color == 85) color = 63;
            float size = linesize[color];
            double angle = Math.Atan2(point2.Y - point1.Y, point2.X - point1.X);
            double rightangle = angle - MathHelper.PiOver2;
            Vector2 forward = new Vector2((float)Math.Cos(angle) * size, (float)Math.Sin(angle) * size);
            Vector2 upward = new Vector2((float)Math.Cos(rightangle) * size, (float)Math.Sin(rightangle) * size);

            Vector3[] pts = new Vector3[8];
            pts[0] = new Vector3(point1.X + upward.X - forward.X, point1.Y + upward.Y - forward.Y, 0);
            pts[1] = new Vector3(point1.X + upward.X, point1.Y + upward.Y, 0);
            pts[2] = new Vector3(point2.X + upward.X, point2.Y + upward.Y, 0);
            pts[3] = new Vector3(point2.X + upward.X + forward.X, point2.Y + upward.Y + forward.Y, 0);
            pts[4] = new Vector3(point1.X - upward.X - forward.X, point1.Y - upward.Y - forward.Y, 0);
            pts[5] = new Vector3(point1.X - upward.X, point1.Y - upward.Y, 0);
            pts[6] = new Vector3(point2.X - upward.X, point2.Y - upward.Y, 0);
            pts[7] = new Vector3(point2.X - upward.X + forward.X, point2.Y - upward.Y + forward.Y, 0);

            VertexPositionColorTexture[] vertexbuf = new VertexPositionColorTexture[6*3];
            Color col = colorPt[color];
            vertexbuf[0] = new VertexPositionColorTexture(pts[0], col, brushPts[0]);
            vertexbuf[1] = new VertexPositionColorTexture(pts[1], col, brushPts[1]);
            vertexbuf[2] = new VertexPositionColorTexture(pts[2], col, brushPts[2]);
            vertexbuf[3] = new VertexPositionColorTexture(pts[3], col, brushPts[3]);
            vertexbuf[4] = new VertexPositionColorTexture(pts[4], col, brushPts[4]);
            vertexbuf[5] = new VertexPositionColorTexture(pts[5], col, brushPts[5]);
            vertexbuf[6] = new VertexPositionColorTexture(pts[6], col, brushPts[6]);
            vertexbuf[7] = new VertexPositionColorTexture(pts[7], col, brushPts[7]);
            
            short[] indexbuf = new short[6 * 3];
            indexbuf[0] = 0;
            indexbuf[1] = 1;
            indexbuf[2] = 4;

            indexbuf[3] = 4;
            indexbuf[4] = 1;
            indexbuf[5] = 5;

            indexbuf[6] = 1;
            indexbuf[7] = 2;
            indexbuf[8] = 5;

            indexbuf[9] = 5;
            indexbuf[10] = 2;
            indexbuf[11] = 6;

            indexbuf[12] = 2;
            indexbuf[13] = 3;
            indexbuf[14] = 6;

            indexbuf[15] = 6;
            indexbuf[16] = 3;
            indexbuf[17] = 7;
            
            game.GraphicsDevice.DrawUserIndexedPrimitives(PrimitiveType.TriangleList, vertexbuf, 0, 8, indexbuf, 0, 6);
        }
    }
}
