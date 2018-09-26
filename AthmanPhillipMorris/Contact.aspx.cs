using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AthmanPhillipMorris.App_Code;

namespace AthmanPhillipMorris
{
    public partial class Contact : System.Web.UI.Page
    {
        private ClientList contacts;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                updateClients();
            }
        }

        private void updateClients()
        {
            this.lbxContacts.Items.Clear();
            this.contacts = ClientList.GetClients();
            this.contacts.Sort();
            for (int index = 0; index < this.contacts.Count(); index++)
            {
                string contact = this.contacts[index].Format();
                this.lbxContacts.Items.Add(new ListItem(contact));
            }
        }

        protected void btnRemoveClient_Click(object sender, EventArgs e)
        {
            try
            {
                ClientList temporaryList = ClientList.GetClients();

                temporaryList.RemoveAt(this.lbxContacts.SelectedIndex);
                HttpContext.Current.Session["Clients"] = temporaryList;
            }
            catch (IndexOutOfRangeException)
            {
                Console.WriteLine("There are no more clients to remove");
            }

            this.updateClients();
        }

        protected void btnSelectMoreClients_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ClientDisplay.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["Clients"] = new ClientList();
            this.updateClients();
        }
    }
}