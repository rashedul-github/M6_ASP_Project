<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Porducts.aspx.cs" Inherits="ProjectWork.Secure.Porducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(() => {
            $('.dropdown-trigger').dropdown();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-content">
                            <span class="card-title">Products List</span>
                            <div>
                                <asp:ListView ID="ListProducts" runat="server" DataKeyNames="ProductsId" DataSourceID="ObjProduct" InsertItemPosition="LastItem" OnItemInserting="ListProducts_ItemInserting" OnItemUpdating="ListProducts_ItemUpdating">
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:LinkButton ID="CancelButton" CssClass="btn btn-floating btn-small grey darken-1" runat="server" CommandName="Cancel"><i class="material-icons">undo</i></asp:LinkButton>
                                                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-floating btn-small blue darken-1" runat="server" ValidationGroup="ged" CommandName="Update"><i class="material-icons">save</i></asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:Label ID="ProductsIdLabel1" runat="server" Text='<%# Eval("ProductsId") %>' />
                                            </td>
                                            <td>
                                                <asp:Image ID="Image2" Width="40px" runat="server" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' />
                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Bind("Picture") %>' />
                                                <asp:FileUpload ID="FileUpload2" runat="server" /><br />
                                                <asp:RequiredFieldValidator ControlToValidate="FileUpload2" ValidationGroup="ged" Style="color: #f44336;" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Picture is required."></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
                                                <asp:RequiredFieldValidator ControlToValidate="ProductsNameTextBox" ValidationGroup="ged" Style="color: #f44336;" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ProductsPriceTextBox" runat="server" Text='<%# Bind("ProductsPrice","{0:0.00}") %>' />
                                                <asp:RequiredFieldValidator ControlToValidate="ProductsPriceTextBox" ValidationGroup="ged" Style="color: #f44336;" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price is required."></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:DropDownList SelectedValue='<%# Bind("Id") %>' CssClass="dropdown-trigger waves-effect waves-teal btn-flat" ID="IdDrop" ValidationGroup="ged" DataValueField="Id" DataTextField="Name" runat="server" AppendDataBoundItems="True" DataSourceID="ObjDrop">
                                                <asp:ListItem Value="select">--Select--</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ControlToValidate="IdDrop" ValidationGroup="ged" Style="color: #f44336;" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Id is required."></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:LinkButton ID="CancelButton" runat="server" CssClass="waves-effect waves-teal btn-flat grey darken-1 btn-small" CommandName="Cancel"> <i class="material-icons">clear</i></asp:LinkButton>
                                                <asp:LinkButton ID="InsertButton" runat="server" CssClass="waves-effect waves-teal btn-flat green darken-1 btn-small" ValidationGroup="gin" CommandName="Insert"><i class="material-icons">add</i></asp:LinkButton>
                                            </td>
                                            <td>[Genarated]</td>
                                            <td>
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("Picture") %>' />
                                                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                                <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="gin" Style="color: #f44336;" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Picture is required."></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
                                                <asp:RequiredFieldValidator ControlToValidate="ProductsNameTextBox" ValidationGroup="gin" Style="color: #f44336;" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ProductsPriceTextBox" runat="server" Text='<%# Bind("ProductsPrice") %>' />
                                                <asp:RequiredFieldValidator ControlToValidate="ProductsPriceTextBox" ValidationGroup="gin" Style="color: #f44336;" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price is required."></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:DropDownList SelectedValue='<%# Bind("Id") %>' CssClass="dropdown-trigger waves-effect waves-teal btn-flat" ID="IdDrop" ValidationGroup="gin" DataValueField="Id" DataTextField="Name" runat="server" AppendDataBoundItems="True" DataSourceID="ObjDrop">
                                                <asp:ListItem Value="select">--Select--</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ControlToValidate="IdDrop" ValidationGroup="gin" Style="color: #f44336;" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Id is required."></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:LinkButton ID="DeleteButton" CssClass="btn btn-floating btn-small orange" runat="server" CommandName="Delete"><i class="material-icons">delete</i></asp:LinkButton>
                                                <asp:LinkButton ID="EditButton" CssClass="btn btn-floating btn-small blue darken-1" runat="server" CommandName="Edit"><i class="material-icons">edit</i></asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:Label ID="ProductsIdLabel" runat="server" Text='<%# Eval("ProductsId") %>' />
                                            </td>
                                            <td>
                                                <asp:Image ID="Image1" Width="40px" runat="server" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="ProductsNameLabel" runat="server" Text='<%# Eval("ProductsName") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="ProductsPriceLabel" runat="server" Text='<%# Eval("ProductsPrice","{0:0.00}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("CatagoryName") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" class="responsive-table">
                                                        <tr runat="server" style="">
                                                            <th runat="server" style="width:125px"></th>
                                                            <th runat="server">Product Id</th>
                                                            <th runat="server">Picture</th>
                                                            <th runat="server">Product Name</th>
                                                            <th runat="server">Product Price</th>
                                                            <th runat="server">Catagory Name</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style="">
                                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                </asp:ListView>
                               <asp:ObjectDataSource ID="ObjProduct" runat="server" EnablePaging="True" SelectCountMethod="GetProductCount" SortParameterName="sortExpression" DataObjectTypeName="ProjectWork.BLL.ProductDTO" DeleteMethod="DeleteProduct" InsertMethod="InsertProduct" SelectMethod="GetProduct" TypeName="ProjectWork.BLL.ProductRipo" UpdateMethod="UpdateProduct">
                                   
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjDrop" runat="server" SelectMethod="GetCatForDropDown" TypeName="ProjectWork.BLL.ProductRipo"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="card-action">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Secure/Categories.aspx">Categories</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
        <ProgressTemplate>
            <img width="10" src="../Images/loading.gif" />
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>
