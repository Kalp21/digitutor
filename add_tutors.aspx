<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="add_tutors.aspx.cs" Inherits="admin_pages_add_tutors" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title >ADD TUTORS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
					<h3 class="page-header"><i class="fa fa-files-o"></i>ADD TUTOR</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Users</li>
						<li><i class="fa fa-files-o"></i>Add Tutors</li>
					</ol>
				</div>
			</div>
              <!-- Form validations -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Add Tutors
                          </header>
                                                    <div class="panel-body">
                              <div class="form">
                                  <div class="form-validate form-horizontal" id="feedback_form">
                                  <div class="form-group">
                                  <asp:ImageButton runat ="server" ID="txt_pic" ImageUrl="~/admin_pages/default_pic.PNG" Height="176px" 
        Width="200px" style="margin:10px 50px 10px 500px" onclick="txt_pic_Click" />
                                  <asp:FileUpload ID="FileUpload1" runat="server" Visible ="false" ></asp:FileUpload><asp:Button Visible ="false"  ID="btn_upload" 
                        runat="server" Text="Upload & View Pic" onclick="btn_upload_Click" /> 
                       
                                  </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Full Name <span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_name" />
                                              <cc1:FilteredTextBoxExtender ID="txt_name_FilteredTextBoxExtender" 
                                                  runat="server" TargetControlID="txt_name" ValidChars ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ. ">
                                              </cc1:FilteredTextBoxExtender>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Mandatory" ControlToValidate ="txt_name"></asp:RequiredFieldValidator>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_email" />
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="EMail is Mandatory" ControlToValidate ="txt_email"></asp:RequiredFieldValidator>
                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                  ErrorMessage="EMail not in proper format" ControlToValidate="txt_email" 
                                                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="curl" class="control-label col-lg-2">Phone</label>
                                          <div class="col-lg-10">
                                             <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_phone" 
                                                   MaxLength="10"  />
                                              <cc1:FilteredTextBoxExtender ID="txt_phone_FilteredTextBoxExtender" 
                                                  runat="server" TargetControlID="txt_phone" ValidChars="1234567890">
                                              </cc1:FilteredTextBoxExtender>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone is Mandatory" ControlToValidate ="txt_phone"></asp:RequiredFieldValidator>
<%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Phone is not proper" MaximumValue="9" 
                                                  MinimumValue="0" ControlToValidate ="txt_phone"></asp:RangeValidator>--%> 
                                                  <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                                  runat="server" ErrorMessage="RegularExpressionValidator" 
                                                  ControlToValidate="txt_phone" 
                                                  ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>--%>
                                                                                           </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Status<span class="required"></span></label>
                                          <div class="col-lg-10">
                                              <asp:RadioButtonList ID="txt_status" runat="server" >
                <asp:ListItem Text ="Active" Value="Active" Selected="True"></asp:ListItem>
                <asp:ListItem Text ="Inactive" Value ="Inactive"></asp:ListItem>
                </asp:RadioButtonList>
                                          </div>
                                      </div>                                      
                                      <%--<div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Posted On</label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_posted_on" />
                                          </div>
                                      </div>--%>
                                       <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Qualification</label>
                                          <div class="col-lg-10">
                                              <asp:TextBox runat ="server"  cssclass="form-control" ID="txt_qualification" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Qulaification is Mandatory" ControlToValidate ="txt_qualification"></asp:RequiredFieldValidator>

                                          </div>
                                      </div>

                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Select Subjects(select with ctrl to select multiple)</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_sub" runat="server" SelectionMode="Multiple">
                                              </asp:ListBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="At least select one subject" ControlToValidate ="txt_sub"></asp:RequiredFieldValidator>

                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Select Locations(select with ctrl to select multiple)</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_loc" runat="server" SelectionMode="Multiple">
                                              </asp:ListBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="At least select one location" ControlToValidate ="txt_loc"></asp:RequiredFieldValidator>

                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Select Package(select with ctrl to select multiple)</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_pac" runat="server" SelectionMode="Multiple">
                                              </asp:ListBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="At least select one package" ControlToValidate ="txt_pac"></asp:RequiredFieldValidator>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Select Boards(select with ctrl to select multiple)</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_board" runat="server" SelectionMode="Multiple">
                                              </asp:ListBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="At least select one board" ControlToValidate ="txt_board"></asp:RequiredFieldValidator>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Select Classes(select with ctrl to select multiple)</label>
                                          <div class="col-lg-10">
                                              <asp:ListBox ID="txt_class" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="At least select one class" ControlToValidate ="txt_class"></asp:RequiredFieldValidator>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <asp:Button runat="server"  ID="Button1" CssClass ="btn btn-primary " 
                                                  Text ="Save" onclick="Button1_Click" />
                                          <asp:Button runat="server"  ID="Button2" CssClass ="btn btn-primary " Text ="Reset" 
                                              onclick="Button2_Click1"/>
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


