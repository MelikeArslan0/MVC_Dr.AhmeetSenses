using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Egitim")]
    public partial class Egitim
    {
        public int id { get; set; }
        public string Okul { get; set; }
        public string Alan { get; set; }
        public int Baslangic { get; set; }
        public int Bitis { get; set; }

    }
}