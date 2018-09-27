<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Antham.Master" CodeBehind="Homepage.aspx.cs" Inherits="AthmanPhillipMorris.Homepage" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles\\Home.css"/>
    <style type="text/css">


    </style>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="formPlaceHolder">
    <asp:Table runat="server" CssClass="pages">
        <asp:TableRow>
            <asp:TableCell>
            <asp:hyperlink NavigateUrl="ClientDisplay.aspx" runat="server">
                <section>
                <asp:image runat="server" imageurl="~/Images/client.png" CssClass="client"/> 
                <br/>
                <asp:label runat="server"> Client list</asp:label>
                </section>
            </asp:hyperlink>
            </asp:TableCell>
            <asp:TableCell>
            <asp:hyperlink NavigateUrl="ClientFeedback.aspx" runat="server">
                <asp:image runat="server" imageurl="~/Images/feedback.jpg" CssClass="feedback" Height="50" Width="50" />
                <br/>
                <asp:label runat="server">Feedback</asp:label>
            </asp:hyperlink>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
</asp:Content>