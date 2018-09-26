<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AthmanPhillipMorris.Contact" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Athman</title>
    <link rel="stylesheet" type="text/css" href="Styles\\Main.css"/>
</head>

<header>
    <h1>The AthMan</h1>
    <h2>"Helping to Manage the World's Athletes"</h2>
</header>

<body>
<form id="form1" runat="server">
    <div>
        <asp:ListBox ID="lbxContacts" runat="server" Height="426px" Width="542px"></asp:ListBox>
    </div>
    <p>
        <asp:Button ID="btnSelectMoreClients" runat="server" OnClick="btnSelectMoreClients_Click" OnClientClick="addMoreClient_Click" Text="Select Additional Clients" />
    </p>
    <p>
        <asp:Button ID="btnRemoveClient" runat="server" OnClick="btnRemoveClient_Click" OnClientClick="removeClient_Click" Text="Remove" />
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear All" />
    </p>
</form>
</body>
</html>
