<%@ Page Title="Master Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MasterDetail.aspx.cs" Inherits="ProjectWork.ViewProducts.MasterDetail" %>

<%@ Register Src="~/ViewProducts/WebUserControl4.ascx" TagPrefix="uc1" TagName="WebUserControl4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <uc1:WebUserControl4 runat="server" ID="WebUserControl4" />
</asp:Content>
