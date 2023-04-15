namespace MelikeArslan_211103031.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Web.Mvc;

    [Table("DoktorBilgileri")]
    public partial class DoktorBilgileri
    {
        public int id { get; set; }

        [StringLength(50)]
        public string Ad { get; set; }

        [StringLength(50)]
        public string Meslegi { get; set; }

        [StringLength(50)]
        public string Konum { get; set; }
        [StringLength(50)]
        public string Resimyolu { get; set; }

        [StringLength(1000)]
        [AllowHtml]
        [UIHint("tinymce_full_compressed")]
        public string Bilgi{ get; set; }
        [StringLength(1000)]
        public string sosyal1 { get; set; }
        [StringLength(1000)]
        public string sosyal2 { get; set; }
    }
}
