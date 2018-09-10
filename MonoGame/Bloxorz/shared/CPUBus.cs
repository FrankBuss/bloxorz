namespace VecxMonoGame.Common
{
	public interface CPUBus
	{
		byte read8(ushort address);

		void write8(ushort address, byte data);
	}
}
