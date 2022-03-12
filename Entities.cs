using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTF.Issuing.BarcodeMicroServices.Entities
{
    public class Entities
    {
        /// <summary>
        /// Created on UTC timestamp automatically assigned by EF Core.
        /// </summary>
        public DateTime CreatedOnUtc { get; set; }

        /// <summary>
        /// Updated on UTC timestamp automatically assigned by EF Core.
        /// </summary>
        public DateTime UpdatedOnUtc { get; set; }
    }
}
