using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Galeri")]

    public class Galeri
    {
        public int id { get; set; }

        [StringLength(100)]
        public string resimyolu { get; set; }
    }
}