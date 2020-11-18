<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tablets.aspx.cs" Inherits="ProjectWork.ViewProducts.Tablets" %>

<%@ Register Src="~/ViewProducts/WebUserControl3.ascx" TagPrefix="uc1" TagName="WebUserControl3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <uc1:WebUserControl3 runat="server" id="WebUserControl3" />
</asp:Content>
