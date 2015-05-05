using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acreditaciones.Models;

namespace Acreditaciones
{
    public partial class VerTrabajo : System.Web.UI.Page
    {
        public Work currentWork { get; set; }
        public WorkArea currentWorkArea { get; set; }
        public Accreditation currentAck { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            var workId = int.Parse(Request.QueryString["WorkID"]);
            var db = new Entities();

            this.currentWork = db.Works.Find(workId);
            this.currentWorkArea = db.WorkAreas.Find(currentWork.AreaID);
            this.currentAck = db.Accreditations.Find(currentWork.AckID);
        }
    }
}