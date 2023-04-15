using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;



namespace MelikeArslan_211103031.DAL
{
    public partial class DatabaseModel : DbContext
    {
        public DatabaseModel()
            : base("name=DatabaseModel")
        {
        }

        public virtual DbSet<DoktorBilgileri> DoktorBilgileri { get; set; }
        public virtual DbSet<Egitim> Egitim { get; set; }
        public virtual DbSet<iletisim> iletisim { get; set; }
        public virtual DbSet<Hastaliklar> Hastaliklar { get; set; }
        public virtual DbSet<Hizmetler> Hizmetler { get; set; }
        public virtual DbSet<Makaleler> Makaleler { get; set; }
        public virtual DbSet<Galeri> Galeri { get; set; }
        public virtual DbSet<Login> Login { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }

     
    }
}
