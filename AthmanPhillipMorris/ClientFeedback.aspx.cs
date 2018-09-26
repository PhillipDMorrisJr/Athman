using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AthmanPhillipMorris.App_Code;
using Incident = AthmanPhillipMorris.AthmanPhillipMorris.App_Code.Incident;


namespace AthmanPhillipMorris
{
    /// <summary>
    /// Handles user feedback
    /// </summary>
    /// <author>
    /// Phillip Morris
    /// </author>
    /// <seealso cref="System.Web.UI.Page" />
    public partial class ClientFeedback : System.Web.UI.Page
    {
        /// <summary>
        /// Handles the Load event of the Page control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.DataBind();
                SetFocus(tbxClientID);
                if (HttpContext.Current.Session["VailidClient"] == null)
                {
                    HttpContext.Current.Session["VailidClient"] = false;
                }

                updateControls();
            }
            

        }

        private void updateControls()
        {
            bool isClientValid = (bool) HttpContext.Current.Session["VailidClient"];
            if (!isClientValid)
            {
                this.rblEfficiency.Enabled = false;
                this.rblProblem.Enabled = false;
                this.rblService.Enabled = false;
                this.btnSubmit.Enabled = false;
                this.cbxContact.Enabled = false;
                this.tbxAdditionalComments.Enabled = false;
               // this.rblContact.Enabled = false;
            }
            else
            {
                this.rblEfficiency.Enabled = true;
                this.rblProblem.Enabled = true;
                this.rblService.Enabled = true;
                this.btnSubmit.Enabled = true;
                this.cbxContact.Enabled = true;
                this.tbxAdditionalComments.Enabled = true;
                //this.rblContact.Enabled = true;
            }
        }

        /// <summary>
        /// Updates the feedback.
        /// </summary>
        private void updateFeedback()
        {
            this.lbxClosedIncidents.Items.Clear();
            DataView clientsTable = (DataView)this.sdsIncidents.Select(DataSourceSelectArguments.Empty);
            if (clientsTable == null)
            {
                return;
            }

            try
            {
                List<Incident> incidents = new List<Incident>();
                clientsTable.RowFilter = $"ClientID = '{Convert.ToInt32(this.tbxClientID.Text)}'";
                foreach (DataRowView row in clientsTable)
                {
                    Incident currentIncident = new Incident();
                    if (!row[5].ToString().Trim().Equals(""))
                    {
                        currentIncident.DateClosed = DateTime.Parse(row[5].ToString());
                        currentIncident.Title = row[6].ToString();
                        currentIncident.ProductID = row[2].ToString();
                        incidents.Add(currentIncident);
                        
                    }
                    else
                    {
                        HttpContext.Current.Session["VailidClient"] = false;
                    }
                }

                this.populateIncidents(incidents);
            }
            catch(FormatException)
            {
                Console.Write("The format of the Client ID must be only integers and be four numbers long.");
                HttpContext.Current.Session["VailidClient"] = false;
            }

            setClientToValidIfThereIsValidClientIDInput();
        }

        private void populateIncidents(List<Incident> incidents)
        {
            incidents = incidents.OrderBy(currentIncident => currentIncident.DateClosed).ToList();
            foreach (Incident currentIncident in incidents)
            {
                ListItem incident = new ListItem(currentIncident.FormatIncident(), currentIncident.ProductID);
                this.lbxClosedIncidents.Items.Add(incident);
            }
        }

        private void setClientToValidIfThereIsValidClientIDInput()
        {
            if (this.lbxClosedIncidents.Items.Count > 0)
            {
                HttpContext.Current.Session["VailidClient"] = true;
                SetFocus(this.lbxClosedIncidents);
            }
        }

        /// <summary>
        /// Handles the Click event of the findIncident control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void findIncident_Click(object sender, EventArgs e)
        {
            updateFeedback();
            updateControls();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    Feedback feedback = new Feedback();
                    feedback.ClientID = Convert.ToInt32(this.tbxClientID.Text);
                    feedback.Contact = this.cbxContact.Checked;
                    feedback.ContactMethod = this.rblContact.SelectedValue;
                    feedback.Comments = this.tbxAdditionalComments.Text;
                    feedback.ServiceTime = Convert.ToInt32(this.rblService.SelectedValue);
                    feedback.Efficiency = Convert.ToInt32(this.rblEfficiency.SelectedValue);
                    feedback.Resolution = Convert.ToInt32(this.rblProblem.SelectedValue);
                    HttpContext.Current.Session["ValidSubmission"] = feedback;
                    Response.Redirect("feedbackComplete.aspx");
                }
                catch (Exception)
                {
                    Console.Write("Invalid submission");
                }
            }

        }

        protected void cbxContact_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbxContact.Checked)
            {
                this.rblContact.Enabled = true;
            }
            else
            {
                this.rblContact.Enabled = false;
                this.rblContact.ClearSelection();
                this.rblContact.AutoPostBack = true;


            }
            
        }

        protected void cvdContact_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = !this.cbxContact.Checked || this.rblContact.SelectedItem != null;
        }
    }


}