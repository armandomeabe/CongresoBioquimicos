using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class Acreditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divValidaciones.Visible = false;

            var hoy = DateTime.Now.Date;
            

            // YYYY MM DD !
            var etapa_1 = new DateTime(2015, 3, 31);
            var etapa_2 = new DateTime(2015, 06, 30);
            var etapa_3 = new DateTime(2015, 8, 7);

            var selector = string.Empty;

            if (hoy <= etapa_1)
            {
                selector += ".etapa_1 input";
            }
            if (hoy >= etapa_1 && hoy <= etapa_2)
            {
                selector += string.IsNullOrEmpty(selector) ? ".etapa_2 input" : ", .etapa_2 input";
            }
            if (hoy >= etapa_2 && hoy <= etapa_3)
            {
                selector += string.IsNullOrEmpty(selector) ? ".etapa_3 input" : ", .etapa_3 input";
            }

            ViewState.Add("etapa", selector);

            //else
            //{
            //    ViewState.Add("etapa", "");
            //}
        }

        protected void Validar(object sender, EventArgs e)
        {
            var btn = (Button)sender;

            //if (string.IsNullOrWhiteSpace(NumeroMatricula.Text)
            //    && string.IsNullOrWhiteSpace(NumeroSocio.Text))
            //{
            //    tituloErrores.InnerText = "Usted no ingresó número de socio ni número de matrícula. Por favor especifique al menos uno de éstos campos.";
            //    divValidaciones.Visible = true;
            //    return;
            //}

            if (
                string.IsNullOrWhiteSpace(Apellido.Text)
                || string.IsNullOrWhiteSpace(Nombre.Text)
                || string.IsNullOrWhiteSpace(Profesion.Text)
                || string.IsNullOrWhiteSpace(Pais.Text)
                || string.IsNullOrWhiteSpace(Provincia.Text)
                || string.IsNullOrWhiteSpace(Localidad.Text)
                || string.IsNullOrWhiteSpace(Direccion.Text)
                || string.IsNullOrWhiteSpace(Telefono.Text)
                || string.IsNullOrWhiteSpace(Movil_A.Text)
                || string.IsNullOrWhiteSpace(Movil_B.Text)
                || string.IsNullOrWhiteSpace(Movil_C.Text)
                || string.IsNullOrWhiteSpace(Email.Text)
                || string.IsNullOrWhiteSpace(DNI.Text)
                )
            {
                divValidaciones.Visible = true;
                return;
            }
            else
            {
                divValidaciones.Visible = false;
            }

            var ack = new Accreditation
            {
                Apellido = Apellido.Text,
                Nombre = Nombre.Text,
                Profesion = Profesion.Text,
                Pais = Pais.Text,
                Provincia = Provincia.Text,
                Localidad = Localidad.Text,
                Direccion = Direccion.Text,
                Telefono = Telefono.Text,
                Movil = string.Format("{0} {1} {2}", Movil_A.Text, Movil_B.Text, Movil_C.Text),
                NumeroMatricula = NumeroMatricula.Text,
                NumeroSocio = NumeroSocio.Text,
                EleccionDePago = btn.CommandArgument,
                AcreditacionRealizada = false, // Porque recién se está creando la solicitud de acreditación.
                AcreditacionComprobanteNro = string.Empty,
                Email = Email.Text,
                DNI = DNI.Text,
                FechaAcreditacion = DateTime.Now
            };

            var ent = new Entities();
            ent.Accreditations.Add(ack);
            ent.SaveChanges();

            Response.Redirect("~/Gracias?ackId=" + ack.id);
        }
    }
}