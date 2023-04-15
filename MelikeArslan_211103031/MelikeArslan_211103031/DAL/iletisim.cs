using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Iletisim")]
    public class iletisim
    {
        public int id { get; set; }

        [StringLength(50)]
        public string ad { get; set; }

        [StringLength(1000)]
        public string Acikadres { get; set; }

        [StringLength(50)]
        public string Randevuno { get; set; }
        [StringLength(50)]
        public string telno { get; set; }

        [StringLength(50)]
        public string Adresyolu { get; set; }
    }
}