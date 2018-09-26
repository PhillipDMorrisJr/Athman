using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AthmanPhillipMorris.App_Code
{
    /// <summary>
    /// A list of clients
    /// </summary>
    /// <author>
    /// Phillip Morris
    /// </author>
    public class ClientList
    {
        private List<Client> clientList;

        /// <summary>
        /// Initializes a new instance of the <see cref="ClientList" /> class.
        /// </summary>
        public ClientList()
        {
            this.clientList = new List<Client>();

        }

        /// <summary>
        /// Sorts this instance.
        /// </summary>
        public void Sort()
        {
            this.clientList = this.clientList.OrderBy(client => client.Name).ToList();
        }

        /// <summary>
        /// Gets the <see cref="Client"/> at the specified index.
        /// </summary>
        /// <value>
        /// The <see cref="Client"/>.
        /// </value>
        /// <param name="index">The index.</param>
        /// <returns></returns>
        public Client this[int index]
        {
            get { return this.clientList[index]; }
        }

        /// <summary>
        /// Gets the <see cref="Client"/> with the specified name.
        /// </summary>
        /// <value>
        /// The <see cref="Client"/>.
        /// </value>
        /// <param name="name">The name.</param>
        /// <returns></returns>
        public Client this[String name]
        {
            get { return this.clientList.Find(client => client.Name.Equals(name)); }
        }

        /// <summary>
        /// Counts the clients.
        /// </summary>
        /// <returns></returns>
        public int Count()
        {
            return this.clientList.Count;
        }

        /// <summary>
        /// Adds the client.
        /// </summary>
        /// <param name="client">The client.</param>
        /// <returns>True when client is added and false otherwise</returns>
        public bool AddClient(Client client)
        {
            if (this[client.Name] == null)
            {
                this.clientList.Add(client);
                return true;
            }

            return false;
        }

        /// <summary>
        /// Removes client at index.
        /// </summary>
        /// <param name="index">The index.</param>
        /// <exception cref="IndexOutOfRangeException">Index out of bounds</exception>
        public void RemoveAt(int index)
        {
            if (index < 0 || index >= this.Count())
            {
                throw new IndexOutOfRangeException("Index out of bounds");
            }

            this.clientList.RemoveAt(index);
        }

        /// <summary>
        /// Clears all client entries.
        /// </summary>
        public void Clear()
        {
            this.clientList.Clear();
        }

        /// <summary>
        /// Gets the clients.
        /// </summary>
        /// <returns></returns>
        public static ClientList GetClients()
        {
            if (HttpContext.Current.Session["Clients"] == null)
            {
                HttpContext.Current.Session["Clients"] = new ClientList();
            }

            return HttpContext.Current.Session["Clients"] as ClientList;
        }
    }
}