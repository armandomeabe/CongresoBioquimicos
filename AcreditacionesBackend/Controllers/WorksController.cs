using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using AcreditacionesBackend.Models;
using Microsoft.AspNet.Identity;

namespace AcreditacionesBackend.Controllers
{
    public class WorksController : Controller
    {
        private Entities db = new Entities();

        [Authorize]
        public async Task<ActionResult> Export(int id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Work work = await db.Works.FindAsync(id);
            if (work == null)
            {
                return HttpNotFound();
            }
            return View(work);
        }

        [Authorize]
        public async Task<ActionResult> Assigned()
        {
            var userId = User.Identity.GetUserId();
            var works = await db.Works.Where(x => x.SupervisorUserId.Equals(userId) && !x.Supervisado.Value).ToListAsync();
            return View(works);
        }

        public async Task<ActionResult> Review(int id)
        {
            var work = await db.Works.FindAsync(id);
            ViewBag.EstadoId = new SelectList(db.WorkStatus.Where(x => x.id.Equals(3) || x.id.Equals(4) || x.id.Equals(5)), "id", "Nombre", work.EstadoID);
            return View(work);
        }

        [Authorize]
        [HttpPost, ValidateInput(false)]
        public async Task<ActionResult> Review(int Id, int? Puntaje, int EstadoId, string ComentariosDelEvaluador)
        {
            var work = await db.Works.FindAsync(Id);
            work.EstadoID = EstadoId;
            work.Puntaje = Puntaje.GetValueOrDefault(0);
            work.ComentariosDelEvaluador = ComentariosDelEvaluador;
            db.Entry(work).State = EntityState.Modified;
            await db.SaveChangesAsync();

            return RedirectToAction("Assigned");
        }

        [Authorize]
        public async Task<ActionResult> Finalize(int id)
        {
            var work = await db.Works.FindAsync(id);

            if (work.Puntaje.HasValue)
            {
                work.Supervisado = true;
                db.Entry(work).State = EntityState.Modified;
                await db.SaveChangesAsync();
            }

            return RedirectToAction("Assigned");
        }

        [Authorize(Roles = "admin")]
        public async Task<ActionResult> GenerateURL(int id)
        {
            var work = await db.Works.FindAsync(id);
            ViewBag.SecretCode = Utils.Base64String.Base64Encode(Utils.Base64String.Base64Encode(Utils.Base64String.Base64Encode(Utils.Base64String.Base64Encode(id.ToString()))));
            return View(work);
        }

        [Authorize(Roles = "admin")]
        public async Task<ActionResult> AssignWorkToSupervisor(int id)
        {
            var work = await db.Works.FindAsync(id);
            ViewBag.SupervisorUserId = new SelectList(db.AspNetUsers, "Id", "PhoneNumber", work.SupervisorUserId);
            return View(work);
        }

        [Authorize(Roles = "admin"), HttpPost, ValidateInput(false)]
        public async Task<ActionResult> AssignWorkToSupervisor(int Id, string SupervisorUserId, string NotasAdicionales)
        {
            var work = await db.Works.FindAsync(Id);
            
            work.Supervisado = false;
            work.SupervisorUserId = SupervisorUserId;
            work.NotasAdicionales = NotasAdicionales;
            work.EstadoID = 7;

            db.Entry(work).State = EntityState.Modified;
            await db.SaveChangesAsync();

            return RedirectToAction("Index");
        }

        [Authorize(Roles = "admin")]
        public async Task<ActionResult> Index(bool? notFinished)
        {
            ViewBag.NotFinished = notFinished.GetValueOrDefault(false);

            if(notFinished.GetValueOrDefault(false))
                return View(await db.Works.Where(x => x.EstadoID == 1).OrderBy(x => x.Id).ToListAsync());

            return View(await db.Works.Where(x => x.EstadoID != 1).OrderBy(x => x.Id).ToListAsync());
        }

        [Authorize(Roles = "admin")]
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Work work = await db.Works.FindAsync(id);
            if (work == null)
            {
                return HttpNotFound();
            }
            return View(work);
        }

        [Authorize(Roles = "admin")]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Works/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Title,Body,AreaID,AckID,NotasAdicionales,EstadoID,ComentariosDelEvaluador,Puntaje")] Work work)
        {
            if (ModelState.IsValid)
            {
                db.Works.Add(work);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(work);
        }

        [Authorize(Roles = "admin")]
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Work work = await db.Works.FindAsync(id);
            if (work == null)
            {
                return HttpNotFound();
            }
            return View(work);
        }

        // POST: Works/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Title,Body,AreaID,AckID,NotasAdicionales,EstadoID,ComentariosDelEvaluador,Puntaje")] Work work)
        {
            if (ModelState.IsValid)
            {
                db.Entry(work).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(work);
        }

        [Authorize(Roles = "admin")]
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Work work = await db.Works.FindAsync(id);
            if (work == null)
            {
                return HttpNotFound();
            }
            return View(work);
        }

        [Authorize(Roles = "admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Work work = await db.Works.FindAsync(id);

            var establishments = work.Establishments.ToList();
            var authors = work.Authors.ToList();

            db.Establishments.RemoveRange(establishments);
            db.Authors.RemoveRange(authors);

            db.Works.Remove(work);
            await db.SaveChangesAsync();
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
