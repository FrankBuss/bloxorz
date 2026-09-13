using Godot;

namespace Bloxorz
{
    public partial class Game : Node
    {
        public override void _Ready()
        {
            var vectrexStart = new AudioStreamPlayer { Stream = GD.Load<AudioStream>("res://Sound/vectrex-start.wav") };
            AddChild(vectrexStart);
            vectrexStart.Play();
        }

        public override void _UnhandledInput(InputEvent @event)
        {
            if (@event.IsActionPressed("quit"))
                GetTree().Quit();
        }
    }
}
