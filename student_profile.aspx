<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="student_profile.aspx.cs" Inherits="admin_pages_student_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title >STUDENT PROFILE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<script type="text/javascript" >
    function goback() {
        window.history.back();
    }

</script>
<!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i>STUDENT PROFILE</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Users</li>
						<li><i class="fa fa-files-o"></i>View Full Details</li>
					</ol>
				</div>
			</div>
              <!-- Form validations -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Student Profile
                          </header>
                                                    <div class="panel-body">
                              <div class="form">
                                  <div class="form-validate form-horizontal" id="feedback_form" method="get" action="">
                                  <div class="form-group">
                                  <asp:Image runat ="server" ID="txt_pic" ImageUrl="~/admin_pages/default_pic.PNG" Height="176px" 
        Width="200px" style="margin:10px 50px 10px 500px" />
                                  </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Full Name <span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_name" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_email" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="curl" class="control-label col-lg-2">Phone</label>
                                          <div class="col-lg-10">
                                             <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_phone" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Status<span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_status"  />
                                          </div>
                                      </div>                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Posted On</label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_posted_on" />
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Class</label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_class" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Board</label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_board" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Subjects Required</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_sub" runat="server" SelectionMode="Multiple">
                                              </asp:ListBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Resposes By</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_response" runat="server" SelectionMode="Multiple">
                                              </asp:ListBox>
                                          </div>
                                      </div>
                                      
                                      
                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                             <%-- <asp:Button runat="server"  ID="Button1" CssClass ="btn btn-primary " Text ="Edit" />--%>
                                          <asp:Button runat="server"  ID="Button2" CssClass ="btn btn-primary " Text ="Ok" 
                                                  onclick="Button2_Click" OnClientClick ="goback()" />
                                          </div>
                                      </div>
                                  </div>
                              </div>

                          </div>
                      </section>
                  </div>
              </div><%--
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


