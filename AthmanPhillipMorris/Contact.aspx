<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Antham.Master"  CodeBehind="Contact.aspx.cs" Inherits="AthmanPhillipMorris.Contact" %>


<asp:Content ID="headContent" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles\\Contact.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="formPlaceHolder">
    <asp:ListBox ID="lbxContacts" runat="server" CssClass="lbxContacts"/>
    <section>
        <asp:Button ID="btnSelectMoreClients" runat="server" OnClick="btnSelectMoreClients_Click" OnClientClick="addMoreClient_Click" Text="Select Additional Clients" />
        <asp:Button ID="btnRemoveClient" runat="server" OnClick="btnRemoveClient_Click" OnClientClick="removeClient_Click" Text="Remove" />
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear All" />
    </section>
</asp:Content>
