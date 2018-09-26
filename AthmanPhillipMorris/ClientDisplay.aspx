<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientDisplay.aspx.cs" Inherits="AthmanPhillipMorris.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Athman</title>
    <link rel="stylesheet" type="text/css" href="Styles\\Main.css" runat="server"/>
    <link rel="stylesheet" type="text/css" href="Styles\\Client.css" runat="server"/>
    <style type="text/css">
    </style>
</head>
<br />
<body >
    <form id="form1" runat="server">
    <header>
        <h1>The AthMan</h1>
        <h2>"Helping to Manage the World's Athletes"</h2>
    </header>
        <asp:DropDownList ID="ddlClients" runat="server" DataSourceID="sdsClients" DataTextField="Name" DataValueField="Name" AutoPostBack="True" OnSelectedIndexChanged="Onselection_Changed">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sdsClients" runat="server" ConnectionString="<%$ ConnectionStrings:AthmanConnection %>" ProviderName="<%$ ConnectionStrings:AthmanConnection.ProviderName %>" SelectCommand="SELECT * FROM [Clients] ORDER BY [Name]"></asp:SqlDataSource>
            <table class="auto-style2">
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td>
                        <asp:Label ID="lblCity" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:Label ID="lblState" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ZIP:</td>
                    <td>
                        <asp:Label ID="lblZipcode" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>
                        <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
                <br/>
                <br/>
                <asp:Button ID="btnAddContact" runat="server" OnClick="AddContact_Click" Text="ADD CONTACT" />
                <asp:Button ID="btnViewContacts" runat="server" Text="VIEW CONTACTS" OnClick="ViewContacts_Click"/>
                <asp:Button ID="btnClientFeedback" runat="server" Text="SUBMIT FEEDBACK" OnClick="submitFeedback_Click"/>
                <p>
                    <asp:Label ID="lblContactAdded" runat="server" Text="Label" CssClass="lblClientAddedMessage"></asp:Label>
                </p>
    </form>
</body>
</html>
