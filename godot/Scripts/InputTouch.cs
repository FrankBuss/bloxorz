using Godot;

namespace Bloxorz
{
    public partial class InputTouch : Control
    {
        [Export] public Vecx vecx;

        public override void _Ready()
        {
            // the on-screen buttons are only needed on touch devices
            Visible = DisplayServer.IsTouchscreenAvailable();
        }

        public void Button1() => vecx.Press(Vecx.Button1);
        public void Button2() => vecx.Press(Vecx.Button2);
        public void Button3() => vecx.Press(Vecx.Button3);
        public void Button4() => vecx.Press(Vecx.Button4);

        public void Left() => vecx.Press(Vecx.Left);
        public void Right() => vecx.Press(Vecx.Right);
        public void Up() => vecx.Press(Vecx.Up);
        public void Down() => vecx.Press(Vecx.Down);
    }
}
