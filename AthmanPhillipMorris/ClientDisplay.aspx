<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientDisplay.aspx.cs" Inherits="AthmanPhillipMorris.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Athman</title>
    <link rel="stylesheet" type="text/css" href="Styles\\Main.css" runat="server"/>
    <link rel="stylesheet" type="text/css" href="Styles\\Client.css" runat="server"/>
</head>
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
                    <td class="auto-style8">Name:</td>
                    <td>
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Address:</td>
                    <td>
                        <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">City:</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblCity" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">State:</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblState" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">ZIP:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblZipcode" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Email:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Phone:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnAddContact" runat="server" OnClick="AddContact_Click" Text="ADD CONTACT" />
                    </td>
                    <td class="auto-style1">
                         <asp:Button ID="btnViewContacts" runat="server" Text="VIEW CONTACTS" OnClick="ViewContacts_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="btnClientFeedback" runat="server" Text="Submit Feedback" OnClick="submitFeedback_Click"/>
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                </table>
                <p>
                    <asp:Label ID="lblContactAdded" runat="server" Text="Label" CssClass="lblClientAddedMessage"></asp:Label>
                </p>
    </form>
</body>
</html>
