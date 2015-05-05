using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class Certificado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ackId = int.Parse(Request.QueryString["ackId"]);
            var entities = new Entities();
            
            var ack = entities.Accreditations.Find(ackId);

            Nombre.Text = string.Format("{0}, {1}", ack.Apellido, ack.Nombre);
            DNI.Text = ack.DNI;
            ComprobanteNro.Text = ack.AcreditacionComprobanteNro;
        }
    }
}