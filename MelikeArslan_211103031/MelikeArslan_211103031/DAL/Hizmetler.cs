using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Hizmetler")]

    public class Hizmetler
    {
        public int id { get; set; }

        [StringLength(1000)]
        public string Hizmet { get; set; }
    }
}