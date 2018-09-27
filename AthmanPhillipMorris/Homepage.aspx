<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Antham.Master" CodeBehind="Homepage.aspx.cs" Inherits="AthmanPhillipMorris.Homepage" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles\\Client.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="formPlaceHolder"></asp:Content>
        <ul>
            <a href="ClientDisplay.aspx">Client Display</a>
            <a href="ClientFeedback.aspx">Client Feedback</a>
        </ul>
</asp:Content>
