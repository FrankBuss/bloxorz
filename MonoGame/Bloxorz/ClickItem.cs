using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace Bloxorz
{
    public abstract class ClickItem
    {
        public Vecx vecx;
        public Rectangle rectangle = new Rectangle();

        public ClickItem(Vecx v)
        {
            vecx = v;
        }

        public abstract void Resize();
        public abstract void Click();
        public abstract void Draw(GameTime gameTime);
    }
}
