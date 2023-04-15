using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MelikeArslan_211103031.DAL;

namespace MelikeArslan_211103031.Controllers
{
    public class GaleriController : Controller
    {
        private DatabaseModel db = new DatabaseModel();

        // GET: Galeri
        public ActionResult Index()
        {
            return View(db.Galeri.ToList());
        }
   

        // GET: Galeri/Details/5
        public ActionResult Details(int? id)


        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Galeri galeri = db.Galeri.Find(id);
            if (galeri == null)
            {
                return HttpNotFound();
            }
            return View(galeri);
        }

        // GET: Galeri/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Galeri/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,resimyolu")] Galeri galeri)
        {
            if (ModelState.IsValid)
            {
                db.Galeri.Add(galeri);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(galeri);
        }

        // GET: Galeri/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Galeri galeri = db.Galeri.Find(id);
            if (galeri == null)
            {
                return HttpNotFound();
            }
            return View(galeri);
        }

        // POST: Galeri/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,resimyolu")] Galeri galeri)
        {
            if (ModelState.IsValid)
            {
                db.Entry(galeri).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(galeri);
        }

        // GET: Galeri/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Galeri galeri = db.Galeri.Find(id);
            if (galeri == null)
            {
                return HttpNotFound();
            }
            return View(galeri);
        }

        // POST: Galeri/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Galeri galeri = db.Galeri.Find(id);
            db.Galeri.Remove(galeri);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
