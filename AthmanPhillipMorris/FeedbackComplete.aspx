<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Antham.Master" CodeBehind="feedbackComplete.aspx.cs"  Inherits="AthmanPhillipMorris.FeedbackComplete" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="formPlaceHolder">
        <section>
            <asp:Label ID="lblReportSummary" runat="server" Text="Waiting on report"></asp:Label>
        </section>
        <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="HOME" />
</asp:Content>