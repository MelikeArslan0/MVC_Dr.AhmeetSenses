using MelikeArslan_211103031.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Razor.Parser.SyntaxTree;

namespace MelikeArslan_211103031.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        DatabaseModel db = new DatabaseModel();
        public ActionResult Index()
        {
            var DoktorBilgileri = db.DoktorBilgileri.FirstOrDefault();
            return View(DoktorBilgileri);

        }
        public ActionResult Egitim()
        {
            var Egitim = db.Egitim.ToList();
            return View(Egitim);

        }
        public ActionResult iletisim()
        {
            var iletisim = db.iletisim.FirstOrDefault();
            return View(iletisim);

        }

        public ActionResult Hastaliklar()
        {
            var Hastaliklar = db.Hastaliklar.ToList();


            return View(Hastaliklar);

        }

        public ActionResult Hizmetler()
        {
            var Hizmetler = db.Hizmetler.ToList();
            return View(Hizmetler);

        }
        public ActionResult Makaleler()
        {
            var Makaleler = db.Makaleler.ToList();
            return View(Makaleler);

        }
        public ActionResult Galeri()
        {
            var Galeri = db.Galeri.ToList();
            return View(Galeri);

        }
       


    }
}