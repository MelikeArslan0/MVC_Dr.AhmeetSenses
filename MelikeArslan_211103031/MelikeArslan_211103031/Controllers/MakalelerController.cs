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
    public class MakalelerController : Controller
    {
        private DatabaseModel db = new DatabaseModel();

        // GET: Makaleler
        public ActionResult Index()
        {
            return View(db.Makaleler.ToList());
        }

        // GET: Makaleler/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Makaleler makaleler = db.Makaleler.Find(id);
            if (makaleler == null)
            {
                return HttpNotFound();
            }
            return View(makaleler);
        }

        // GET: Makaleler/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Makaleler/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Makaleadi,Makaleyolu")] Makaleler makaleler)
        {
            if (ModelState.IsValid)
            {
                db.Makaleler.Add(makaleler);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(makaleler);
        }

        // GET: Makaleler/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Makaleler makaleler = db.Makaleler.Find(id);
            if (makaleler == null)
            {
                return HttpNotFound();
            }
            return View(makaleler);
        }

        // POST: Makaleler/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Makaleadi,Makaleyolu")] Makaleler makaleler)
        {
            if (ModelState.IsValid)
            {
                db.Entry(makaleler).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(makaleler);
        }

        // GET: Makaleler/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Makaleler makaleler = db.Makaleler.Find(id);
            if (makaleler == null)
            {
                return HttpNotFound();
            }
            return View(makaleler);
        }

        // POST: Makaleler/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Makaleler makaleler = db.Makaleler.Find(id);
            db.Makaleler.Remove(makaleler);
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
