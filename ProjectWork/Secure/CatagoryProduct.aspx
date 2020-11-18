<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CatagoryProduct.aspx.cs" Inherits="ProjectWork.Secure.CatagoryProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        <asp:GridView CssClass="responsive-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlGetProduct" DataKeyNames="ProductsId">
            <Columns>
                <asp:BoundField DataField="ProductsId" HeaderText="ProductsId" InsertVisible="False" ReadOnly="True" SortExpression="ProductsId" />
                <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" Width="40px" runat="server" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductsName" HeaderText="ProductsName" SortExpression="ProductsName" />
                <asp:TemplateField HeaderText="ProductsPrice" SortExpression="ProductsPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductsPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ProductsPriceLabel" runat="server" Text='<%# Eval("ProductsPrice","{0:0.00}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <a href="/Secure/Categories.aspx" class="waves-effect waves-teal btn-flat"><i class="material-icons left">keyboard_backspace</i>Back to Catagory list</a>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlGetProduct" runat="server" ConnectionString="<%$ ConnectionStrings:pdsdb %>" SelectCommand="SELECT * FROM [Products] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
