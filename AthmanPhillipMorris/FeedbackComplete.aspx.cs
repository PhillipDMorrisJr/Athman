using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AthmanPhillipMorris
{
    public partial class FeedbackComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ValidSubmission"] != null)
            {
                this.lblReportSummary.Text = "We will contact you soon!";
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("ClientDisplay.aspx");
        }
    }
}