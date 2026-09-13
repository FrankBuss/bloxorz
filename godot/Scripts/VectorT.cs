namespace Bloxorz
{
    public class VectorT
    {
        public long x0, y0; // start coordinate
        public long x1, y1; // end coordinate 

        // color [0, VECTREX_COLORS - 1], if color = VECTREX_COLORS, then this is an invalid entry and must be ignored.
        public byte color;
        public long timecode;

        public VectorT()
        {
        }

        public VectorT(long x0, long y0, long x1, long y1, byte color, long timecode)
        {
            this.x0 = x0;
            this.y0 = y0;
            this.x1 = x1;
            this.y1 = y1;
            this.color = color;
            this.timecode = timecode;
        }
    }
}
