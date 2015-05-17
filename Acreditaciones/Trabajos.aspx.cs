using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class Trabajos : System.Web.UI.Page
    {
        private const int MaxWorkWords = 500;

        public Work currentWork { get; set; }
        public WorkArea currentWorkArea { get; set; }

        public Accreditation currentAck { get; set; }
        Entities db { get; set; }

        private void UpdateFields(Work work)
        {
            this.Areas.SelectedValue = work.AreaID.ToString();
            this.Titulo.Text = work.Title;
            this.Trabajo.Text = work.Body;

            this.ddlSeleccioneEstablecimiento.Items.Clear();
            foreach (var estWork in currentWork.Establishments.Distinct())
            {
                this.ddlSeleccioneEstablecimiento.Items.Add(
                    new ListItem(estWork.Nombre, estWork.id.ToString()));
            }
        }

        public Trabajos()
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var ackDNI = Utils.Base64String.Base64Decode(Request.QueryString["internal"]);
            var workid = Utils.Base64String.Base64Decode(Request.QueryString["work"]);
            db = new Entities();
            
            var ack = db.Accreditations.FirstOrDefault(x => x.DNI.Trim().Equals(ackDNI.Trim()));
            this.currentAck = ack;

            Work work;
            if (workid == "nuevo")
            {
                work = null;
            }
            else
            {
                int workidnumber = int.Parse(workid);
                work = db.Works.Find(workidnumber);
                currentWork = work;
            }

            if (IsPostBack) return;
            if (work == null)
            {
                work = new Work
                {
                    AckID = ack.id,
                    AreaID = -1,
                    Title = "<h1>Microencapsulación de <i>Lactobacillus casei</i> en leche descremada por secado spray.</h1>",
                    Body = "Utilice éste espacio para redactar su propuesta de trabajo.",
                    NotasAdicionales = "",
                    EstadoID = 1
                };
                db.Works.Add(work);
                db.SaveChanges();

                Response.Redirect("~/Trabajos.aspx?internal=" + Utils.Base64String.Base64Encode(currentAck.DNI) + "&work=" + Utils.Base64String.Base64Encode(work.Id.ToString()));
            }

            this.currentWork = work;
            if (this.currentWork.AreaID > 0)
                this.currentWorkArea = db.WorkAreas.Find(currentWork.AreaID);
            else
                this.currentWorkArea = new WorkArea() { Id = -1, Nombre = "Seleccione un area" };

            if (IsPostBack) return;

            var areas = db.WorkAreas.ToList();
            Areas.Items.Clear();
            Areas.Items.Add(new ListItem("<< SELECCIONE EL AREA >>", "-1"));
            Areas.Items.AddRange((from area in areas select new ListItem(string.Format("{0} - {1}", area.Id, area.Nombre), area.Id.ToString())).ToArray());

            this.UpdateFields(work);



            tituloErrores.Visible = false;
            Mensaje.Visible = false;

            if (work.EstadoID != 1)
            {
                Mensaje.Visible = true;
                Editor.Visible = false;
                var estado = db.WorkStatus.Find(work.EstadoID);
                ViewState["Estado"] = estado.Nombre;
            }

            //if (!ackDNI.ToLower().Contains("tester"))
            //    Response.Redirect("~/Default.aspx");

        }

        protected void GuardarProgreso(object sender, EventArgs e)
        {
            var ackDNI = Utils.Base64String.Base64Decode(Request.QueryString["internal"]);
            db = new Entities();

            var ack = db.Accreditations.FirstOrDefault(x => x.DNI.Trim().Equals(ackDNI.Trim()));

            currentWork = db.Works.Find(currentWork.Id);

            currentWork.Title = hiddenTitulo.Value ?? "";
            currentWork.Body = hiddenTrabajo.Value ?? "";
            currentWork.AreaID = int.Parse(Areas.SelectedValue);

            db.Entry(currentWork).State = EntityState.Modified;
            db.SaveChanges();

            this.UpdateFields(currentWork);

            ValidarTrabajo();
        }

        protected void FinalizarPropuesta(object sender, EventArgs e)
        {
            var ackDNI = Utils.Base64String.Base64Decode(Request.QueryString["internal"]);
            db = new Entities();

            var ack = db.Accreditations.FirstOrDefault(x => x.DNI.Trim().Equals(ackDNI.Trim()));
            currentWork = db.Works.Find(currentWork.Id);

            if (!currentWork.Authors.Any())
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Debe ingresar al menos un autor con su institución, el primer autor será quien presenta el trabajo.');", true);
                return;
            }

            currentWork.Title = Titulo.Text;
            currentWork.Body = Trabajo.Text;

            if (int.Parse(Areas.SelectedValue) < 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Debe elegir el área en la que presenta el trabajo.');", true);
                return;
            }

            currentWork.AreaID = int.Parse(Areas.SelectedValue);


            var ok = ValidarTrabajo();

            if (ok)
            {
                currentWork.EstadoID = 2;
                currentWork.PosicionEnElArea = db.Works.Count(x => x.AreaID.Equals(currentWork.AreaID));
            }

            db.Entry(currentWork).State = EntityState.Modified;
            db.SaveChanges();

            if (ok)
            {
                Response.Redirect("~/TrabajoRecibido.aspx?workId=" + currentWork.Id);
            }
        }

        private bool ValidarTrabajo()
        {
            var words = Utils.HtmlRemoval.WordCount(Trabajo.Text);
            if (words > MaxWorkWords)
            {
                tituloErrores.Visible = true;
                tituloErrores.InnerText = "Ha superado el máximo de " + MaxWorkWords +
                                          " palabras permitidas para un trabajo. Se guardó su progreso, pero deberá cumplir con éste requisito para poder presentarlo.";
                return false;
            }
            else
            {
                tituloErrores.Visible = false;
                return true;
            }
        }

        protected void AgregarAutor(object sender, EventArgs e)
        {
            return;

            try
            {
                if (string.IsNullOrWhiteSpace(NuevoAutorNombre.Text)) return;

                //var DNI = NuevoAutorDNI.Text;
                //var acks = db.Accreditations.Where(x => x.DNI.Trim().ToLower().Equals(DNI.Trim().ToLower()));

                //if (!acks.Any())
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('No se encontró ninguna acreditación con el DNI proporcionado');", true);
                //    return;
                //}
                //else
                //{
                //    var ack = acks.First();

                //    if (!ack.AcreditacionRealizada)
                //    {
                //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Se encontró el registro del sr./a. " + ack.Apellido + ", " + ack.Nombre + ", pero aún no se confirmó el pago de su acreditación.');", true);
                //        return;
                //    }
                //}

                //var ack = acks.First();
                var isPresenter = !currentWork.Authors.Any();

                db.Authors.Add(new Author()
                {
                    Establecimiento = ddlSeleccioneEstablecimiento.SelectedItem.Text,
                    //Nombre = string.Format("{0}, {1}", acks.First().Apellido, acks.First().Nombre),
                    Nombre = string.Format("{0}", NuevoAutorNombre.Text),
                    IdWork = currentWork.Id,
                    IdEstablishment = int.Parse(ddlSeleccioneEstablecimiento.SelectedValue),
                    IsPresenter = isPresenter,
                    OrderPosition = currentWork.Authors.Count + 1
                });

                db.SaveChanges();
                NuevoAutorNombre.Text = "";
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
                return;
            }
        }

        protected void AgregarEstablecimiento(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(NuevoEstablecimientoNombre.Text)) return;
            db.Establishments.Add(new Establishment()
            {
                Nombre = NuevoEstablecimientoNombre.Text,
                IdWork = currentWork.Id,
                Number = db.Establishments.Count(x => x.IdWork.Equals(currentWork.Id)) + 1
            });
            db.SaveChanges();
            NuevoEstablecimientoNombre.Text = "";
            this.UpdateFields(currentWork);
        }

        protected void removeBtnClicked(object sender, EventArgs e)
        {
            var btn = (Button)sender;
            var id = btn.CommandArgument;

            var establecimiento = db.Establishments.Find(id);

            if (establecimiento == null) return;

            db.Establishments.Remove(establecimiento);

            db.SaveChanges();

        }

        protected void resetEstablishments(object sender, EventArgs e)
        {
            var authors = db.Authors.Where(x => x.IdWork.Equals(currentWork.Id));
            foreach (var author in authors)
            {
                db.Authors.Remove(author);
            }

            var establishments = db.Establishments.Where(x => x.IdWork.Equals(currentWork.Id));
            foreach (var establishment in establishments)
            {
                db.Establishments.Remove(establishment);
            }

            db.SaveChanges();
        }

        protected void resetAuthors(object sender, EventArgs e)
        {
            var authors = db.Authors.Where(x => x.IdWork.Equals(currentWork.Id));
            foreach (var author in authors)
            {
                db.Authors.Remove(author);
            }
            db.SaveChanges();
        }

    }
}