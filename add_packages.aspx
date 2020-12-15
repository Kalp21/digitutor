<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="add_packages.aspx.cs" Inherits="admin_pages_add_packages" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title >ADD PACKAGE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i>ADD PACKAGE</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Package</li>
						<li><i class="fa fa-files-o"></i>Add Package</li>
					</ol>
				</div>
			</div>
              <!-- Form validations -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Add Package
                          </header>

                          <div class="panel-body">
                              <div class="form">
                                  <div class="form-validate form-horizontal" id="feedback_form">
                                  
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Package Name <span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server" cssclass="form-control"  ID="txt_name" />
                                              <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" ValidChars="qwertyuioplkjhgfdsazxcvbnm0123654789 .QWERTYUIOPLKJHGFDSAZXCVBNM" 
    TargetControlID="txt_name" />
                                          </div>
                                      </div>

                                       <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Package Validity(in months)<span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server" cssclass="form-control"  ID="txt_validity" />
                                              <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
    TargetControlID="txt_validity" />
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Package Total Leads<span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server" cssclass="form-control"  ID="txt_leads" />
                                              <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers"
    TargetControlID="txt_leads" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Package Cost<span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server" cssclass="form-control"  ID="txt_cost" />
                                              <cc1:FilteredTextBoxExtender ID="txt_cost_FilteredTextBoxExtender" 
                                                  runat="server" TargetControlID="txt_cost" ValidChars="1234567890,.">
                                              </cc1:FilteredTextBoxExtender>
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">Package Status <span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:RadioButtonList ID="txt_status" runat="server" >
                <asp:ListItem Text ="Active" Value="Active"></asp:ListItem>
                <asp:ListItem Text ="Inactive" Value ="Inactive"></asp:ListItem>
                </asp:RadioButtonList>
                                          </div>
                                      </div>
                                      <div class="form-group "><div class="col-lg-offset-2 col-lg-10">
                                       <asp:Button ID="Button4" CssClass ="btn btn-primary " runat="server" Text ="Add" onclick="btn_add_Click11"/>
                                       </div>  </div>
</div>
</div>
</div>
          </section> 
          </div> 
          </div> 
           
          
                                                    
                             
             <%-- <asp:TextBox runat ="server"   ID="txt_name" />
               <asp:TextBox runat ="server"  ID="txt_status"  />--%>
              <%--
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Advanced Form validations
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal " id="register_form" method="get" action="">
                                      <div class="form-group ">
                                          <label for="fullname" class="control-label col-lg-2">Full name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="fullname" name="fullname" type="text" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="address" class="control-label col-lg-2">Address <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="address" name="address" type="text" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-2">Username <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="username" name="username" type="text" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="password" class="control-label col-lg-2">Password <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="password" name="password" type="password" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="confirm_password" class="control-label col-lg-2">Confirm Password <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="confirm_password" name="confirm_password" type="password" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="email" class="control-label col-lg-2">Email <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="email" name="email" type="email" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="agree" class="control-label col-lg-2 col-sm-3">Agree to Our Policy <span class="required">*</span></label>
                                          <div class="col-lg-10 col-sm-9">
                                              <input  type="checkbox" style="width: 20px" class="checkbox form-control" id="agree" name="agree" />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                          <asp:Button runat="server"  ID="btn_edit" CssClass ="btn btn-primary " Text ="Edit" />
                                          <asp:Button runat="server"  ID="btn_ok" CssClass ="btn btn-primary " Text ="Ok" />
                                              
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </section>
                  </div>
              </div>
              <!-- page end-->--%>
          </section>
      </section>
      <!--main content end-->

</asp:Content>



