<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mobiles.aspx.cs" Inherits="ProjectWork.ViewProducts.Mobiles" %>

<%@ Register Src="~/ViewProducts/WebUserControl2.ascx" TagPrefix="uc1" TagName="WebUserControl2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <uc1:WebUserControl2 runat="server" id="WebUserControl2" />
</asp:Content>
