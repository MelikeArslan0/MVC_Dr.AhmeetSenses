using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MelikeArslan_211103031.DAL
{
    [Table("Login")]
    public class Login
    {
        public int id { get; set; } 
       
        [StringLength(50)]
        public string kullanici { get; set; }
        [StringLength(50)]
        public string sifre { get; set; }
    }
}