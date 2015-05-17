using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class PreTrabajos : System.Web.UI.Page
    {
        public Accreditation currentAck { get; set; }
        Entities db { get; set; }
        public Work workA;
        public Work workB;

        protected void Page_Load(object sender, EventArgs e)
        {
            var ackDNI = Utils.Base64String.Base64Decode(Request.QueryString["internal"]);
            db = new Entities();
            var ack = db.Accreditations.FirstOrDefault(x => x.DNI.Trim().Equals(ackDNI.Trim()));
            this.currentAck = ack;

            var works = db.Works.Where(x => x.AckID.Equals(ack.id));
            lbl1.Text = currentAck.Apellido + ", " + currentAck.Nombre;

            if (!works.Any())
            {
                lblTitulo1.Text =
                    lblTitulo2.Text =
                        "<h1>Aún no comenzó a redactar este trabajo. Utilice el botón 'Crear / Editar »' para comenzarlo.</h1>";

                lblBrief1.Text = lblBrief2.Text = "- Sin vista previa para este trabajo -";
            }
            else
            {
                if (works.Count() == 1)
                {
                    workA = works.FirstOrDefault();
                    workB = null;

                    lblTitulo1.Text = workA.Title;
                    lblBrief1.Text = workA.Body;
                    lblTitulo2.Text =
                        "<h1>Aún no comenzó a redactar este trabajo. Utilice el botón 'Crear / Editar »' para comenzarlo.</h1>";
                    lblBrief2.Text = "- Sin vista previa para este trabajo -";
                }
                else
                {
                    workA = works.ToList()[0];
                    workB = works.ToList()[1];

                    lblTitulo1.Text = workA.Title;
                    lblBrief1.Text = workA.Body;

                    lblTitulo2.Text = workB.Title;
                    lblBrief2.Text = workB.Body;
                }
            }
        }

        protected void edit1(object sender, EventArgs e)
        {
            var workid = workA == null ? "nuevo" : workA.Id.ToString();
            Response.Redirect("~/Trabajos.aspx?internal=" + Utils.Base64String.Base64Encode(currentAck.DNI) + "&work=" + Utils.Base64String.Base64Encode(workid));
        }

        protected void edit2(object sender, EventArgs e)
        {
            var workid = workB == null ? "nuevo" : workB.Id.ToString();
            Response.Redirect("~/Trabajos.aspx?internal=" + Utils.Base64String.Base64Encode(currentAck.DNI) + "&work=" + Utils.Base64String.Base64Encode(workid));
        }
    }
}