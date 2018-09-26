namespace AthmanPhillipMorris
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI.WebControls;

    namespace AthmanPhillipMorris.App_Code
    {
        /// <summary>
        /// Incident based on the incident table in the Athman database
        /// </summary>
        public class Incident
        {
            /// <summary>
            /// Initializes a new instance of the <see cref="Incident"/> class.
            /// </summary>
            public Incident()
            {

            }

            /// <summary>
            /// Gets or sets the product identifier.
            /// </summary>
            /// <value>
            /// The product identifier.
            /// </value>
            public string ProductID { get; set; }

            /// <summary>
            /// Gets or sets the date closed.
            /// </summary>
            /// <value>
            /// The date closed.
            /// </value>
            public DateTime DateClosed { get; set; }


            /// <summary>
            /// Gets or sets the title.
            /// </summary>
            /// <value>
            /// The title.
            /// </value>
            public string Title { get; set; }

            /// <summary>
            /// Formats the incident.
            /// </summary>
            /// <returns></returns>
            public string FormatIncident()
            {
                return "Incident for product " + this.ProductID + " closed " + this.DateClosed.ToString("MM/dd/yyyy") + " (" + this.Title + ")";
            }

        }
    }
}