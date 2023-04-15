using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MelikeArslan_211103031.DAL;

namespace MelikeArslan_211103031.Controllers
{
    public class EgitimController : Controller
    {
        private DatabaseModel db = new DatabaseModel();

        // GET: Egitim
        public ActionResult Index()
        {
            return View(db.Egitim.ToList());
        }

        // GET: Egitim/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Egitim egitim = db.Egitim.Find(id);
            if (egitim == null)
            {
                return HttpNotFound();
            }
            return View(egitim);
        }

        // GET: Egitim/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Egitim/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Okul,Alan,Baslangic,Bitis")] Egitim egitim)
        {
            if (ModelState.IsValid)
            {
                db.Egitim.Add(egitim);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(egitim);
        }

        // GET: Egitim/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Egitim egitim = db.Egitim.Find(id);
            if (egitim == null)
            {
                return HttpNotFound();
            }
            return View(egitim);
        }

        // POST: Egitim/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Okul,Alan,Baslangic,Bitis")] Egitim egitim)
        {
            if (ModelState.IsValid)
            {
                db.Entry(egitim).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(egitim);
        }

        // GET: Egitim/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Egitim egitim = db.Egitim.Find(id);
            if (egitim == null)
            {
                return HttpNotFound();
            }
            return View(egitim);
        }

        // POST: Egitim/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Egitim egitim = db.Egitim.Find(id);
            db.Egitim.Remove(egitim);
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
