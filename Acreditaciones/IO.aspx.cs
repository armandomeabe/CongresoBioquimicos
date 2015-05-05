using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class IO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod(EnableSession = true)]
        public static void DeleteEstablishment(int Id)
        {
            var db = new Entities();

            var establecimiento = db.Establishments.Find(Id);
            foreach (var autor in establecimiento.Authors.ToList())
            {
                db.Authors.Remove(autor);
            }
            db.Establishments.Remove(establecimiento);

            db.SaveChanges();
        }

        [WebMethod(EnableSession = true)]
        public static void DeleteAuthorAsync(int Id)
        {
            var db = new Entities();
            var autor = db.Authors.Find(Id);
            int idWork = autor.IdWork;
            db.Authors.Remove(autor);
            db.SaveChanges();

            UpdateAutorOrders(idWork);
        }

        [WebMethod(EnableSession = true)]
        public static void SetPresenter(int AutorID, int WorkID)
        {
            var db = new Entities();
            var currentAutor = db.Authors.Find(AutorID);
            var work = db.Works.Find(WorkID);

            foreach (var author in work.Authors)
            {
                author.IsPresenter = false;
            }
            currentAutor.IsPresenter = true;

            db.SaveChanges();
        }

        [WebMethod(EnableSession = true)]
        public static void BajarOrden(int AutorID, int WorkID)
        {
            var db = new Entities();
            var currentAutor = db.Authors.Find(AutorID);
            var work = db.Works.Find(WorkID);

            if (currentAutor.OrderPosition >= work.Authors.Count) return;

            var nextAutor = work.Authors.Where(x => x.OrderPosition.Equals(currentAutor.OrderPosition + 1)).ToList();
            if (nextAutor.Any()) nextAutor.First().OrderPosition -= 1;

            currentAutor.OrderPosition += 1;
            db.SaveChanges();
        }

        [WebMethod(EnableSession = true)]
        public static void SubirOrden(int AutorID, int WorkID)
        {
            var db = new Entities();
            var currentAutor = db.Authors.Find(AutorID);
            var work = db.Works.Find(WorkID);

            if (currentAutor.OrderPosition.Equals(0)) return;

            var nextAutor = work.Authors.Where(x => x.OrderPosition.Equals(currentAutor.OrderPosition - 1)).ToList();
            if (nextAutor.Any()) nextAutor.First().OrderPosition += 1;

            currentAutor.OrderPosition -= 1;
            db.SaveChanges();
        }

        private static void UpdateAutorOrders(int idWork)
        {
            var db = new Entities();
            var work = db.Works.Find(idWork);
            int i = 1;
            foreach (var autor in work.Authors)
            {
                autor.OrderPosition = i;
                i++;
            }
            db.SaveChanges();
        }

        [WebMethod(EnableSession = true)]
        public static void AgregarEstablecimiento(string Nombre, int WorkID)
        {
            var db = new Entities();
            var currentWork = db.Works.Find(WorkID);
            if (string.IsNullOrWhiteSpace(Nombre)) return;
            db.Establishments.Add(new Establishment()
            {
                Nombre = Nombre,
                IdWork = WorkID,
                Number = db.Establishments.Count(x => x.IdWork.Equals(currentWork.Id)) + 1
            });
            db.SaveChanges();
        }

        [WebMethod(EnableSession = true)]
        public static void AgregarAutor(string Nombre, int WorkID, string EstablecimientoText, int EstablecimientoID)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(Nombre)) return;

                var db = new Entities();
                var currentWork = db.Works.Find(WorkID);

                var isPresenter = !currentWork.Authors.Any();

                db.Authors.Add(new Author()
                {
                    Establecimiento = EstablecimientoText,
                    //Nombre = string.Format("{0}, {1}", acks.First().Apellido, acks.First().Nombre),
                    Nombre = string.Format("{0}", Nombre),
                    IdWork = currentWork.Id,
                    IdEstablishment = EstablecimientoID,
                    IsPresenter = isPresenter,
                    OrderPosition = currentWork.Authors.Count + 1
                });

                db.SaveChanges();
            }
            catch (Exception ex)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
                return;
            }
        }
    }
}