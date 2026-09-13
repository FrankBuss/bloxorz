using System.IO;
using System.Reflection;

namespace Bloxorz
{
    // The BIOS and the cartridge are embedded in the assembly (see Bloxorz.csproj),
    // so they are part of every export without extra export filters.
    public static class Rom
    {
        public static void LoadBios(Vectrex vectrex)
        {
            Load("vectrex_bios.bin", vectrex.rom);
        }

        public static void LoadCart(Vectrex vectrex)
        {
            Load("Bloxorz.bin", vectrex.cart);
        }

        private static void Load(string name, byte[] target)
        {
            using Stream stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(name);
            int i = 0;
            while (i < target.Length)
            {
                int read = stream.Read(target, i, target.Length - i);
                if (read <= 0) break;
                i += read;
            }
        }
    }
}
