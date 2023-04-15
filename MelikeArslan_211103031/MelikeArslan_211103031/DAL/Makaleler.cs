using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Makaleler")]
    public class Makaleler
    {
        public int id { get; set; }

        [StringLength(1000)]
        public string Makaleadi { get; set; }

        [StringLength(1000)]
        public string Makaleyolu { get; set; }
    }
}