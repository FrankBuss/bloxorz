using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace VecxMonoGame.Common
{
    public class ClickBox : ClickItem
    {
        bool x = false;

        public ClickBox(Vecx v) : base(v)
        {
        }

        public override void Click()
        {
            x = !x;
        }

        public override void Draw(GameTime gameTime)
        {
            Vector2 p0 = new Vector2(rectangle.Left, rectangle.Top);
            Vector2 p1 = new Vector2(rectangle.Right, rectangle.Top);
            Vector2 p2 = new Vector2(rectangle.Right, rectangle.Bottom);
            Vector2 p3 = new Vector2(rectangle.Left, rectangle.Bottom);
			vecx.DrawLine(p0, p1, 0);
			vecx.DrawLine(p1, p2, 0);
			vecx.DrawLine(p2, p3, 0);
			vecx.DrawLine(p3, p0, 0);
            if (x)
            {
				vecx.DrawLine(p0, p2, 0);
				vecx.DrawLine(p3, p1, 0);
            }
        }

        public override void Resize()
        {
			rectangle = new Rectangle((int)(vecx.ppi*0.25+vecx.gfxOff.X),(int)(vecx.ppi*0.25+vecx.gfxOff.Y),(int)(vecx.ppi*0.5),(int)(vecx.ppi*0.5));
        }
    }
}