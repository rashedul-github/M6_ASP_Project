<%@ Page Title="Laptops" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Leptops.aspx.cs" Inherits="ProjectWork.ViewProducts.Leptops" %>

<%@ Register Src="~/ViewProducts/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <uc1:WebUserControl1 runat="server" id="WebUserControl1" />

</asp:Content>
