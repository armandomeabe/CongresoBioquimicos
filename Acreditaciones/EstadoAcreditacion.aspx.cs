using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class EstadoAcreditacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buscar_OnClick(object sender, EventArgs e)
        {
            try
            {
                var dni = DNI.Text;
                var db = new Entities();

                var record = db.Accreditations.FirstOrDefault(x => x.DNI.Trim().ToLower().Equals(dni.Trim().ToLower()));

                if (record == null)
                {
                    ViewState["ackId"] = null;
                    ResultLabel.Text = "No se encontró ninguna acreditación con el DNI ingresado: " + DNI.Text;
                }
                else
                {
                    if (record.AcreditacionRealizada)
                    {
                        ResultLabel.Text =
                            string.Format(
                                "Sr/a. {0}, {1}; Su acreditación ya fue realizada. Número de comprobante: {2}",
                                record.Apellido, record.Nombre, record.AcreditacionComprobanteNro);
                        ViewState["ackId"] = record.id;
                    }
                    else
                    {
                        ResultLabel.Text = string.Format("Sr/a. {0}, {1}; Su acreditación aún no fue completada.",
                            record.Apellido, record.Nombre);
                        ViewState["ackId"] = null;
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}