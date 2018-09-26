<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientFeedback.aspx.cs" Inherits="AthmanPhillipMorris.ClientFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Athman</title>
    <link rel="stylesheet" type="text/css" href="Styles\\Main.css"/>
    <link rel="stylesheet" type="text/css" href="Styles\\Feedback.css"/>
</head>

<header>
    <h1>The AthMan</h1>
    <h2>"Helping to Manage the World's Athletes"</h2>
</header>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbxClientID" runat="server"></asp:TextBox>
            <asp:Button ID="btnClientID" runat="server" OnClick="findIncident_Click" Text="Find Incidents" CssClass="btnClientID"/>
        </div>
        <asp:ListBox ID="lbxClosedIncidents" runat="server" CssClass="Listbox" Height="293px"></asp:ListBox>
        <asp:SqlDataSource ID="sdsIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:Incidents %>" ProviderName="<%$ ConnectionStrings:Incidents.ProviderName %>" SelectCommand="SELECT * FROM [Incidents] WHERE ([DateClosed] IS NOT NULL)"></asp:SqlDataSource>
        <table class="auto-style4">
            <tr>
                <td>Service Time:</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="rblService" runat="server">
                        <asp:ListItem Value="1">Satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Neither</asp:ListItem>
                        <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Technical Efficiency:</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rblEfficiency" runat="server">
                        <asp:ListItem Value="1">Satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Neither</asp:ListItem>
                        <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Problem resolution:</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rblProblem" runat="server">
                        <asp:ListItem Value="1">Satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Neither</asp:ListItem>
                        <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:TextBox ID="tbxAdditionalComments" runat="server" CssClass="tbxAdditionalComments" Height="144px" Width="531px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Do you wish to be contacted"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:CheckBox ID="cbxContact" runat="server" Text="Yes" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="rblContact" runat="server">
                        <asp:ListItem>Email</asp:ListItem>
                        <asp:ListItem>Phone</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
