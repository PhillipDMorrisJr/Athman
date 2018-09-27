<%@ Page Language="C#" MasterPageFile="~/Antham.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AthmanPhillipMorris.ContactUs" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles\\Client.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="formPlaceHolder">
    <p>
        Phone:&nbsp;<a href="tel:+18843284626">1.884.328.4626</a><br>
        Email:&nbsp;<a href="mailto:info@athman.com">info@athman.com</a><br/><br/>
        Mailing Address:<br/>
        Athman Inc.<br>
        781 Southside Lane<br>
        Los Angeles, CA 90063
    </p>

</asp:Content>
