<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="list_tutors.aspx.cs" Inherits="admin_pages_list_tutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>LIST TUTORS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

 <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i>LIST TUTORS</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Users</li>
						<li><i class="fa fa-files-o"></i>List Tutors</li>
					</ol>
				</div>
			</div>
              <!-- Form validations -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              ALL TUTORS IN THE CURRENT SYSTEM
                          </header>
                          <div class="panel-body">




                              <div class="form">
                               





                                       <asp:Label ID="lbl_error" runat ="server" Text ="THERE ARE NO TUTORS PRESENT IN THE SYSTEM" Visible ="false" ></asp:Label>
    <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                       <div class="btn-group" >
                            <asp:TextBox runat="server"  cssclass="form-control"  id ="txt_search" ></asp:TextBox>
                                  
                            <asp:Button  class="btn-info" id="btn_search" runat ="server" Text ="Search" 
                                onclick="btn_search_Click1" />
                                <br /><br />
                                <asp:Label ID="Label1" runat="server" Text ="SHOW ENTRIES"></asp:Label><br />
                                <asp:DropDownList class="btn btn-default dropdown-toggle" ID="ddl_reduce" runat ="server" AutoPostBack ="true"  
                                onselectedindexchanged="ddl_reduce_SelectedIndexChanged1">
                            <asp:ListItem Text ="Show Active" Value ="select_active_tutors" ></asp:ListItem> 
                            <asp:ListItem Text ="Show Inactive" Value="select_inactive_tutors"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                          </div>   
                       </li>                    
                </ul>
                <br />
                <!--  search form end -->   
    <asp:GridView ID="grd_list_tutors" runat="server" AutoGenerateColumns="False" OnRowEditing="row_editing"
        OnRowDeleting="row_deleting" DataKeyNames="tut_id" 
        OnRowUpdating="row_updating" class="col-lg-12 "
        OnRowCancelingEdit="row_cancel" 
        OnSelectedIndexChanged="grd_list_tutors_SelectedIndexChanged" 
        AllowPaging="true" PageSize="25" 
        onpageindexchanging="grd_list_tutors_PageIndexChanging" 
        onrowdatabound="grd_list_tutors_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("tut_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lbl_name" runat="server" Text='<%# Eval("tut_name") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_name" runat="server" Text='<%# Eval("tut_name")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lbl_email" runat="server" Text='<%# Eval("tut_email") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_email" runat="server"  Text='<%# Eval("tut_email") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label ID="lbl_phone"  runat="server" Text='<%# Eval("tut_phone") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_phone" runat="server" Text='<%# Eval("tut_phone") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            
            
           
            
            <asp:TemplateField HeaderText="Tutor Status">
                <ItemTemplate>
                    <asp:Label ID="lbl_status" runat="server" Text='<%# Eval("tut_status") %>'></asp:Label>
                </ItemTemplate>
               <EditItemTemplate>
                <asp:RadioButtonList ID="rbl_status" runat="server" >
                <asp:ListItem Text ="Active" Value="Active"></asp:ListItem>
                <asp:ListItem Text ="Inactive" Value ="Inactive"></asp:ListItem>
                </asp:RadioButtonList>
                                   </EditItemTemplate>
                            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Posted On">
                <ItemTemplate>
                    <asp:Label ID="lbl_posted_on"  runat="server" Text='<%# Eval("tut_posted_on") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_posted_on" runat="server"  Text='<%# Eval("tut_posted_on") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Leads Given">
                <ItemTemplate>
                    <asp:Label ID="lbl_leads" runat="server" ></asp:Label>
                </ItemTemplate>
               <%-- <EditItemTemplate>
                    <asp:TextBox ID="txt_tut" runat="server"></asp:TextBox>
                </EditItemTemplate>--%>
            </asp:TemplateField>
                

            <asp:CommandField  HeaderText="Edit" ShowEditButton="true" ShowHeader="true" ButtonType="Button"/>
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" ButtonType="Button"/>
             <asp:TemplateField HeaderText ="View Full Details">
                <ItemTemplate>
                    <a href='tutor_profile.aspx?ID=<%# Eval("tut_id") %>&Name=<%# Eval("tut_name") %>' >View Detail</a>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:CommandField HeaderText ="View details" ShowCancelButton ="true" ShowHeader ="true" />--%>
        </Columns>
    </asp:GridView>





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
                                              <button class="btn btn-primary" type="submit">Save</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
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



