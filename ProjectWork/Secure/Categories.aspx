<%@ Page Title="Categories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="ProjectWork.Secure.Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
        <div class="col s12 m6">
            <div class="card">
                <div class="card-content">
                    <span class="card-title">Categories List</span>
                    <div>
                        <asp:ListView ID="ListCategories" runat="server" DataSourceID="ObjCatagory" DataKeyNames="Id" InsertItemPosition="LastItem">
                            <EditItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:LinkButton ID="CancelButton" CssClass="btn btn-floating btn-small grey darken-1" runat="server" CommandName="Cancel" ><i class="material-icons">undo</i></asp:LinkButton>
                                        <asp:LinkButton ID="UpdateButton" CssClass="btn btn-floating btn-small blue darken-1" runat="server" ValidationGroup="ged" CommandName="Update" ><i class="material-icons">save</i></asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="ged" style="color:#f44336;" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:LinkButton ID="CancelButton" runat="server" CssClass="waves-effect waves-teal btn-flat grey darken-1 btn-small" CommandName="Cancel" > <i class="material-icons">clear</i></asp:LinkButton>
                                        <asp:LinkButton ID="InsertButton" runat="server" CssClass="waves-effect waves-teal btn-flat green darken-1 btn-small" ValidationGroup="gin" CommandName="Insert" ><i class="material-icons">add</i></asp:LinkButton>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="NameTextBox" style="color:#f44336;" ValidationGroup="gin" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-floating btn-small orange" runat="server" CommandName="Delete" ><i class="material-icons">delete</i></asp:LinkButton>
                                        <asp:LinkButton ID="EditButton" CssClass="btn btn-floating btn-small blue darken-1" runat="server" CommandName="Edit" ><i class="material-icons">edit</i></asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:HyperLink CssClass="waves-effect waves-teal btn-flat btn-small" ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "~/Secure/CatagoryProduct.aspx?id={0}") %>'>Products</asp:HyperLink>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" class="responsive-table">
                                                <tr runat="server" style="">
                                                    <th runat="server"></th>
                                                    <th runat="server">Id</th>
                                                    <th runat="server">Name</th>
                                                    <th runat="server">View</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="ObjCatagory" runat="server" EnablePaging="True" SelectCountMethod="GetCatagoriesCount" DataObjectTypeName="ProjectWork.BLL.CatagoryDTO" DeleteMethod="DeleteCat" InsertMethod="InsertCat" SelectMethod="GetCatagories" TypeName="ProjectWork.BLL.CatagoryRipo" UpdateMethod="UpdateCat" SortParameterName="sortExpression" >
                        </asp:ObjectDataSource>
                    </div>
                </div>
                <div class="card-action">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Secure/Porducts.aspx">Products</asp:HyperLink>
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
