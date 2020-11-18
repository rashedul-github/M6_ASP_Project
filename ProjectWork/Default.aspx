<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectWork.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col s12 m3 offset-l2">
            <div class="card green lighten-4">
                <div class="card-image">
                    <asp:Image ID="Img" runat="server" Width="200px" ImageUrl="~/Images/laptop.png" />
                    <a class="btn-floating halfway-fab waves-effect waves-light red" href="/ViewProducts/Leptops.aspx"><i class="material-icons">add</i></a>
                </div>
                <div class="card-content">
                    <p>See & buy the best laptop from the ABC Online Shop .All latest model available at ABC Online Shop Branches , Find the perfect laptops available price list ...</p>
                </div>
            </div>
        </div>
        <div class="col s12 m3">
            <div class="card green lighten-4">
                <div class="card-image">
                    <asp:Image ID="Image1" runat="server" Width="200px" ImageUrl="~/Images/mobile.png" />
                    <a class="btn-floating halfway-fab waves-effect waves-light red" href="/ViewProducts/Mobiles.aspx"><i class="material-icons">add</i></a>
                </div>
                <div class="card-content">
                    <p>Buy Latest Mobiles Phones online at best price in Bangladesh 2020. Browse for popular smartphones from top brands i.e. Samsung, Apple, Nokia, HTC, Xiaomi, Vivo, ...</p>
                </div>
            </div>
        </div>
         <div class="col s12 m3">
            <div class="card green lighten-4">
                <div class="card-image">
                    <asp:Image ID="Image2" runat="server" Width="200px" ImageUrl="~/Images/tab.png" />
                    <a class="btn-floating halfway-fab waves-effect waves-light red" href="/ViewProducts/Tablets.aspx"><i class="material-icons">add</i></a>
                </div>
                <div class="card-content">
                    <p>List of all the latest and new latest tabs available you might want to stick with one of the latest Fire tablets i.e. Samsung, Apple, Nokia, HTC, Xiaomi, Vivo...</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
