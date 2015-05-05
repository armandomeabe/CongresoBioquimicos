using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class TrabajoRecibido : System.Web.UI.Page
    {
        private Entities db { get; set; }
        public Work currentWork { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["workId"] = Request.QueryString["workId"];
            this.db = new Entities();

            var work = db.Works.Find(int.Parse(ViewState["workId"].ToString()));
            this.currentWork = work;

            var area = db.WorkAreas.Find(work.AreaID);
            this.areaId.Text = string.Format("#{0} ({1})", work.AreaID, area.Nombre);

            int pos = db.Works.Count(x => x.AreaID.Equals(work.AreaID));

            this.areaPosicion.Text = string.Format("#{0}", pos);
        }
    }
}