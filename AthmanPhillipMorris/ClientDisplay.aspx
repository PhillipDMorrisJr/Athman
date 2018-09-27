<%@ Page Language="C#" MasterPageFile="~/Antham.Master" AutoEventWireup="true" CodeBehind="ClientDisplay.aspx.cs" Inherits="AthmanPhillipMorris.Main" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles\\Client.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="formPlaceHolder">
        <asp:DropDownList ID="ddlClients" runat="server" DataSourceID="sdsClients" DataTextField="Name" DataValueField="Name" AutoPostBack="True" OnSelectedIndexChanged="Onselection_Changed">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sdsClients" runat="server" ConnectionString="<%$ ConnectionStrings:AthmanConnection %>" ProviderName="<%$ ConnectionStrings:AthmanConnection.ProviderName %>" SelectCommand="SELECT * FROM [Clients] ORDER BY [Name]"></asp:SqlDataSource>
            <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell runat="server">Name:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblName" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">Address:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblAddress" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">City:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblCity" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">State:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblState" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">ZIP:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblZipcode" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">Email:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblEmail" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">Phone:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblPhone" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br/>
                <br/>
                <asp:Button ID="btnAddContact" runat="server" OnClick="AddContact_Click" Text="ADD CONTACT" />
                <asp:Button ID="btnViewContacts" runat="server" Text="VIEW CONTACTS" OnClick="ViewContacts_Click"/>
                <asp:Button ID="btnClientFeedback" runat="server" Text="SUBMIT FEEDBACK" OnClick="submitFeedback_Click"/>
                <p>
                    <asp:Label ID="lblContactAdded" runat="server" Text="Label" CssClass="lblClientAddedMessage"></asp:Label>
                </p>
</asp:Content>
