<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="admin_pages_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title >Change Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

<div> 
    <div class="container">
          <div class="login-form" >        
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_key_alt"></i></span>
              <asp:Label ID="lbl_oldpass" CssClass ="form-control" runat="server" Text ="Old Password"></asp:Label>
              </div>
              <div class="input-group ">
              <asp:TextBox ID="txt_oldpass" CssClass="form-control " runat ="server" TextMode="Password"  ></asp:TextBox>
            </div>
            <div class="input-group ">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="txt_oldpass" ErrorMessage="Old Password Is Mandatory To Enter"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_key_alt"></i></span>
              <asp:Label ID="lbl_newpass" CssClass ="form-control" runat="server" Text ="New Password"></asp:Label>
              </div>
              <div class="input-group ">
              <asp:TextBox ID="txt_newpass" CssClass="form-control " runat ="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="input_group">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="txt_newpass" ErrorMessage="!New
                Password Is Mandatory To Enter!"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_key_alt"></i></span>
              <asp:Label ID="lbl_confirmpass" CssClass ="form-control" runat="server" Text ="Confirm Password"></asp:Label>
              </div>
              <div class="input-group ">
              <asp:TextBox ID="txt_confirmpass" CssClass="form-control " runat ="server" TextMode="Password"></asp:TextBox>
            </div>
             <div class="input-group ">
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="!New Password and Confirm Password donot match!" ControlToCompare ="txt_newpass" ControlToValidate ="txt_confirmpass"></asp:CompareValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="txt_confirmpass" ErrorMessage="!Confirm
                Password Is Mandatory To Enter!"></asp:RequiredFieldValidator>
             
              
                </div>
            <%--<label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>--%>
            <asp:Button ID="btn_change" class="btn btn-primary btn-lg btn-block" runat ="server" 
                Text="Change Password" onclick="btn_change_Click" ></asp:Button>
           <%-- <button class="btn btn-info btn-lg btn-block" type="submit">Signup</button>--%>
        </div>
      </div>

    </div>
    </div> 


</asp:Content>

