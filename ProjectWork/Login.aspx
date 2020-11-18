<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectWork.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <div class="card-panel teal lighten-2">Sign in Here</div>
    <div class="row" runat="server" id="msg" visible="false">
         <div class="col offset-l1">
             <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
         </div>
     </div>
    <div class="row">
        <div class="row">
            <div class="input-field col s6 offset-l1">
                <asp:TextBox runat="server" ValidationGroup="glog" placeholder="Enter username" ID="username" type="text" class="validate"></asp:TextBox>
                <asp:Label runat="server" AssociatedControlID="username" for="first_name">Username</asp:Label>
                <asp:RequiredFieldValidator ControlToValidate="username" ValidationGroup="glog" style="color:#f44336;" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6 offset-l1">
                <asp:TextBox runat="server"  ValidationGroup="glog" placeholder="Enter password" ID="password" TextMode="Password" class="validate"></asp:TextBox>
                <asp:Label runat="server" AssociatedControlID="password" for="password">Password</asp:Label>
                <asp:RequiredFieldValidator ControlToValidate="Password" ValidationGroup="glog" style="color:#f44336;" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
            </div>
        </div>
         <div class="row">
            <div class="col s4 offset-l1">
                <asp:Button ValidationGroup="glog" CssClass="btn waves-effect waves-light" ID="bntLogin" runat="server" Text="Sign in" OnClick="bntLogin_Click" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col s4 offset-l1">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Register.aspx" runat="server">New Register Here</asp:HyperLink>
        </div>
       
    </div>
</asp:Content>
