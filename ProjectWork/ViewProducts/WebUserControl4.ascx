<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl4.ascx.cs" Inherits="ProjectWork.ViewProducts.WebUserControl4" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="cont">
            <h4 class="lime accent-4" style="padding: 10px">Catagories</h4>
            <asp:GridView ID="GridView1" CssClass="responsive-table" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsCategory" SelectedIndex="0">
                <SelectedRowStyle CssClass="lime lighten-3" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:pdsdb %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
        </div>
        <div>
            <h4 class="lime accent-4" style="padding: 10px">Products</h4>
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="responsive-table" DataKeyNames="ProductsId" AllowPaging="true" DataSourceID="sdsProduct" AutoGenerateRows="False">
                <PagerSettings Position="Bottom" FirstPageText="First" NextPageText="Next" PreviousPageText="Previous" LastPageText="Last" Mode="NextPreviousFirstLast" />
                <Fields>
                    <asp:BoundField DataField="ProductsId" HeaderText="ProductsId" InsertVisible="False" ReadOnly="True" SortExpression="ProductsId" />
                    <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" Width="40px" runat="server" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ProductsName" HeaderText="ProductsName" SortExpression="ProductsName" />
                    <asp:TemplateField HeaderText="ProductsPrice" SortExpression="ProductsPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductsPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductsPrice") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="ProductsPriceLabel" runat="server" Text='<%# Eval("ProductsPrice","{0:0.00}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Id" HeaderText="Category Id" SortExpression="Id" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="sdsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:pdsdb %>" SelectCommand="SELECT * FROM [Products] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
