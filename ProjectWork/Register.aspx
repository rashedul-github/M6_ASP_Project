<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectWork.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="card-panel teal lighten-2">New Register Here</div>
    <div class="row" runat="server" id="msg" visible="false">
        <div class="col offset-l1">
            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="row">
            <div class="input-field col s6 offset-l1">
                <asp:TextBox runat="server" ValidationGroup="greg" placeholder="Enter username" ID="username" type="text" class="validate"></asp:TextBox>
                <asp:Label runat="server" AssociatedControlID="username" for="first_name">Username</asp:Label>
                <asp:RequiredFieldValidator ControlToValidate="username" ValidationGroup="greg" Style="color: #f44336;" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6 offset-l1">
                <asp:TextBox runat="server" ValidationGroup="greg" placeholder="Enter password" ID="password" TextMode="Password" class="validate"></asp:TextBox>
                <asp:Label runat="server" AssociatedControlID="password" for="password">Password</asp:Label>
                <asp:RequiredFieldValidator ControlToValidate="password" ValidationGroup="greg" Style="color: #f44336;" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6 offset-l1">
                <asp:TextBox runat="server" ValidationGroup="greg" placeholder="Confirm password" ID="confirmpassword" TextMode="Password" class="validate"></asp:TextBox>
                <asp:Label runat="server" AssociatedControlID="confirmpassword" for="confirmpassword">Confirm Password</asp:Label>
                <asp:RequiredFieldValidator ControlToValidate="confirmpassword" ValidationGroup="greg" Style="color: #f44336;" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Confirm Password is required."></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ValidationGroup="greg"  Style="color: #f44336;" ControlToValidate="confirmpassword" ControlToCompare="password" runat="server" ErrorMessage="Password doesn't match."></asp:CompareValidator>
            </div>
        </div>
        <div class="row">
            <div class="col s4 offset-l1">
                <asp:LinkButton CssClass="btn waves-effect waves-light" ValidationGroup="greg" ID="lbSubmit" runat="server" OnClick="lbSubmit_Click">Submit <i class="material-icons right">send</i></asp:LinkButton>
            </div>
        </div>
        <div class="row">
            <div class="col s4 offset-l1">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" runat="server">Back to sign in</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>
