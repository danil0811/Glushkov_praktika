using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using praktika1.pod;

namespace praktika1
{
    class Helper
    {
        private static strahovyaKompaniya mod;
        public static strahovyaKompaniya GetContext()
        {
            if (mod == null)
            {
                mod = new strahovyaKompaniya();
            }
            return mod;
        }
    }
}
