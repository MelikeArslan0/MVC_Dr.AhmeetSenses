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
    public class HastaliklarController : Controller
    {
        private DatabaseModel db = new DatabaseModel();

        // GET: Hastaliklar
        public ActionResult Index()
        {
            return View(db.Hastaliklar.ToList());
        }

        // GET: Hastaliklar/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hastaliklar hastaliklar = db.Hastaliklar.Find(id);
            if (hastaliklar == null)
            {
                return HttpNotFound();
            }
            return View(hastaliklar);
        }

        // GET: Hastaliklar/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Hastaliklar/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Hastalik")] Hastaliklar hastaliklar)
        {
            if (ModelState.IsValid)
            {
                db.Hastaliklar.Add(hastaliklar);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(hastaliklar);
        }

        // GET: Hastaliklar/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hastaliklar hastaliklar = db.Hastaliklar.Find(id);
            if (hastaliklar == null)
            {
                return HttpNotFound();
            }
            return View(hastaliklar);
        }

        // POST: Hastaliklar/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Hastalik")] Hastaliklar hastaliklar)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hastaliklar).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(hastaliklar);
        }

        // GET: Hastaliklar/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hastaliklar hastaliklar = db.Hastaliklar.Find(id);
            if (hastaliklar == null)
            {
                return HttpNotFound();
            }
            return View(hastaliklar);
        }

        // POST: Hastaliklar/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Hastaliklar hastaliklar = db.Hastaliklar.Find(id);
            db.Hastaliklar.Remove(hastaliklar);
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
