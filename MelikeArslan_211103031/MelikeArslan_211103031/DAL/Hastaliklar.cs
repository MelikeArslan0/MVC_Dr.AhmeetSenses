using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Hastaliklar")]
    public class Hastaliklar
    {
        public int id { get; set; }

        [StringLength(100)]
        public string Hastalik{ get; set; }
    }
}