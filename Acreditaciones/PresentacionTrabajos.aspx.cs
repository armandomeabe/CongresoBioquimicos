using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class PresentacionTrabajos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar_OnClick(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(DNI.Text)) return;

            var db = new Entities();
            var ack = db.Accreditations.FirstOrDefault(x => x.DNI.Trim().Equals(DNI.Text.Trim()));

            if (ack == null)
            {
                Response.Redirect("~/Acreditar.aspx");
            }
            else
            {
                if (string.IsNullOrWhiteSpace(ack.AcreditacionComprobanteNro))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Acreditación pendiente", "alert('No puede presentar un trabajo porque su acreditación aún está en estado pendiente.');", true);
                    return;
                }

                Response.Redirect("~/PreTrabajos.aspx?internal=" + Utils.Base64String.Base64Encode(ack.DNI));
            }
        }
    }
}