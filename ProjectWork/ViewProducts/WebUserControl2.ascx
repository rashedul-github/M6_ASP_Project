<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl2.ascx.cs" Inherits="ProjectWork.ViewProducts.WebUserControl2" %>

<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataMobiles">
    <HeaderTemplate>
        <h4>Mobiles</h4>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="row">
            <div class="col s12 m6 offset-l3">
                <div class="card horizontal">
                    <div class="card-image">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' />
                    </div>
                    <div class="card-stacked">
                        <div class="card-content">
                            <div>Id: <%# Eval("ProductsId") %></div>
                            <div>Name: <%# Eval("ProductsName") %></div>
                            <div>Price: <%# Eval("ProductsPrice","{0:0.00}") %></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
<div>
    <asp:SqlDataSource ID="SqlDataMobiles" runat="server" ConnectionString="<%$ ConnectionStrings:pdsdb %>" SelectCommand="SELECT Products.ProductsId, Products.Picture, Products.ProductsName, Products.ProductsPrice FROM Categories INNER JOIN Products ON Categories.Id = Products.Id WHERE (Categories.Id = 2)"></asp:SqlDataSource>
</div>
