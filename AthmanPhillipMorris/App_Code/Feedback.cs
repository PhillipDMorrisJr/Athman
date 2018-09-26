using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AthmanPhillipMorris.App_Code
{
    /// <summary>
    ///  The feedback based on the incident database
    /// </summary>
    public class Feedback
    {
        /// <summary>
        /// Gets or sets the client identifier.
        /// </summary>
        /// <value>
        /// The client identifier.
        /// </value>
        public int ClientID { get; set; }
        /// <summary>
        /// Gets or sets the incident identifier.
        /// </summary>
        /// <value>
        /// The incident identifier.
        /// </value>
        public int IncidentID{ get; set; }
        /// <summary>
        /// Gets or sets the service time.
        /// </summary>
        /// <value>
        /// The service time.
        /// </value>
        public int ServiceTime{ get; set; }
        /// <summary>
        /// Gets or sets the efficiency.
        /// </summary>
        /// <value>
        /// The efficiency.
        /// </value>
        public int Efficiency{ get; set; }
        /// <summary>
        /// Gets or sets the resolution.
        /// </summary>
        /// <value>
        /// The resolution.
        /// </value>
        public int Resolution{ get; set; }
        /// <summary>
        /// Gets or sets the comments.
        /// </summary>
        /// <value>
        /// The comments.
        /// </value>
        public String Comments{ get; set; }
        /// <summary>
        /// Gets or sets a value indicating whether this <see cref="Feedback"/> is contact.
        /// </summary>
        /// <value>
        ///   <c>true</c> if contact; otherwise, <c>false</c>.
        /// </value>
        public bool Contact{ get; set; }
        /// <summary>
        /// Gets or sets the contact method.
        /// </summary>
        /// <value>
        /// The contact method.
        /// </value>
        public String ContactMethod{ get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="Feedback"/> class.
        /// </summary>
        public Feedback()
        {

        }
    }
}