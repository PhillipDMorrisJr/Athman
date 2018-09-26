<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbackComplete.aspx.cs" Inherits="AthmanPhillipMorris.FeedbackComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Athman</title>
    <link rel="stylesheet" type="text/css" href="Styles\\Main.css" runat="server"/>
</head>

<header>
    <h1>The AthMan</h1>
    <h2>"Helping to Manage the World's Athletes"</h2>
</header>
<body>
<form id="form1" runat="server">
    <div>
        <asp:Label ID="lblReportSummary" runat="server" Text="Waiting on report"></asp:Label>
    </div>
    <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="HOME" />
</form>
</body>
</html>
