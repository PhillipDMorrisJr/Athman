using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AthmanPhillipMorris.App_Code;

namespace AthmanPhillipMorris
{
    /// <summary>
    /// The feedback
    /// </summary>
    /// <seealso cref="System.Web.UI.Page" />
    /// <author>
    /// Phillip Morris
    /// </author>
    public partial class FeedbackComplete : System.Web.UI.Page
    {
        /// <summary>
        /// Handles the Load event of the Page control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            Feedback userFeedback = HttpContext.Current.Session["ValidSubmission"] as Feedback;
            if (userFeedback != null)
            {
                if (userFeedback.Contact)
                {
                    this.lblReportSummary.Text = "We will contact you soon!";
                }
                else
                {
                    this.lblReportSummary.Text = "Thank you for your feedback!";
                }
                
            }
        }

        /// <summary>
        /// Handles the Click event of the btnHome control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Homepage.aspx");
        }
    }
}