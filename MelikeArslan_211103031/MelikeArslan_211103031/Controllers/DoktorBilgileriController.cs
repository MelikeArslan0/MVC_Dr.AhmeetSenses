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
    public class DoktorBilgileriController : Controller
    {
        private DatabaseModel db = new DatabaseModel();

        // GET: DoktorBilgileri
        public ActionResult Index()
        {
            return View(db.DoktorBilgileri.ToList());
        }

        // GET: DoktorBilgileri/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DoktorBilgileri doktorBilgileri = db.DoktorBilgileri.Find(id);
            if (doktorBilgileri == null)
            {
                return HttpNotFound();
            }
            return View(doktorBilgileri);
        }

        // GET: DoktorBilgileri/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DoktorBilgileri/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Ad,Meslegi,Konum,Resimyolu,Bilgi,sosyal1,sosyal2")] DoktorBilgileri doktorBilgileri)
        {
            if (ModelState.IsValid)
            {
                db.DoktorBilgileri.Add(doktorBilgileri);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(doktorBilgileri);
        }

        // GET: DoktorBilgileri/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DoktorBilgileri doktorBilgileri = db.DoktorBilgileri.Find(id);
            if (doktorBilgileri == null)
            {
                return HttpNotFound();
            }
            return View(doktorBilgileri);
        }

        // POST: DoktorBilgileri/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Ad,Meslegi,Konum,Resimyolu,Bilgi,sosyal1,sosyal2")] DoktorBilgileri doktorBilgileri)
        {
            if (ModelState.IsValid)
            {
                db.Entry(doktorBilgileri).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(doktorBilgileri);
        }

        // GET: DoktorBilgileri/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DoktorBilgileri doktorBilgileri = db.DoktorBilgileri.Find(id);
            if (doktorBilgileri == null)
            {
                return HttpNotFound();
            }
            return View(doktorBilgileri);
        }

        // POST: DoktorBilgileri/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DoktorBilgileri doktorBilgileri = db.DoktorBilgileri.Find(id);
            db.DoktorBilgileri.Remove(doktorBilgileri);
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
