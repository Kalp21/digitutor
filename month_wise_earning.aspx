<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="month_wise_earning.aspx.cs" Inherits="admin_pages_month_wise_earning" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>MONTHWISE EARNINGS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i>TOTAL EARNINGS</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Reports</li>
						<li><i class="fa fa-files-o"></i>Earnings</li>
					</ol>
				</div>
			</div>
              <!-- Form validations -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             EARNINGS OF SYSTEM
                          </header>
                         
                                                    <div class="panel-body">
                              <div class="form">
                                  <div class="form-validate form-horizontal" id="feedback_form">
                                  <div class="form-group">
                                  <div class="form-group">
                                       <asp:Label ID="lbl_error" runat ="server" class="control-label col-lg-6" Text ="THERE ARE NO EARNINGS IN THIS PERIOD" Visible ="false" ></asp:Label>
                                       </div>
    <!--  search form start -->
                <%--<ul class="nav top-menu">                    
                    <li>
                       <div class="btn-group" >--%>
                            <%--<asp:TextBox runat="server"  cssclass="form-control"  id ="txt_search" ></asp:TextBox>
                                  
                            <asp:Button  class="btn-info" id="btn_search" runat ="server" Text ="Search" 
                                onclick="btn_search_Click1" />
                                <br /><br />--%>
                                <%--<div class="form-group">
                                <asp:Label ID="Label1" runat="server" class="control-label col-lg-2" Text ="SHOW EARNINGS"></asp:Label><br />
                                </div>
                                 <div class="form-group">
                                <asp:Label ID="lbl_start" runat="server" Text="Enter Start Date" class="control-label col-lg-2" ></asp:Label>
                                <div class="col-lg-5">
                                <asp:TextBox ID="txt_start_date" runat="server" CssClass="form-control" >
                                </asp:TextBox>
                                <cc1:CalendarExtender ID="ce1" runat="server" TargetControlID ="txt_start_date" ></cc1:CalendarExtender>
                                <br /></div></div><div class="form-group">
                                 <asp:Label ID="Label2" runat="server" Text="Enter End Date" class="control-label col-lg-2"></asp:Label><div class="col-lg-5">
                                <asp:TextBox ID="txt_end_date" runat="server" CssClass="form-control">
                                </asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID ="txt_end_date" ></cc1:CalendarExtender></div></div>
                                <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button ID="btn_see_earning" runat="server" Text="See Earnings" 
                                onclick="btn_see_earning_Click" CssClass ="btn btn-primary " />
                                </div>
                                </div>
                                <div class="form-group">
                                 <asp:Label ID="Label3" runat="server" Text="Total Earning" class="control-label col-lg-2"></asp:Label><div class="col-lg-5">
                                <asp:TextBox ID="txt_total_earning" runat="server" CssClass="form-control">
                                </asp:TextBox></div></div>
                               </div>--%>
                               <div class="col-lg-10">
                                <asp:GridView ID="grd_list_tutors" runat="server" AutoGenerateColumns="False"  AllowPaging="true" PageSize="10" 
                                           class="col-lg-10 "
    
         AllowSorting="true" >
        <Columns>
            <asp:TemplateField HeaderText="Month Name">
                <ItemTemplate>
                    <asp:Label ID="lbl_month" runat="server" Text='<%# Eval("SalesMonth") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Total Earnings">
                <ItemTemplate>
                    <asp:Label ID="lbl_sales" runat="server" Text='<%# Eval("TotalSales") %>'></asp:Label>
                </ItemTemplate>
              
            </asp:TemplateField>
           </Columns>
           </asp:GridView>
           </div>
           <%-- <asp:TemplateField HeaderText="Email">
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
            </asp:TemplateField>--%>
            
            
           
            
            <%--<asp:TemplateField HeaderText="Tutor Status">
                <ItemTemplate>
                    <asp:Label ID="lbl_status" runat="server" Text='<%# Eval("tut_status") %>'></asp:Label>
                </ItemTemplate>
               <EditItemTemplate>
                <asp:RadioButtonList ID="rbl_status" runat="server" >
                <asp:ListItem Text ="Active" Value="Active"></asp:ListItem>
                <asp:ListItem Text ="Inactive" Value ="Inactive"></asp:ListItem>
                </asp:RadioButtonList>
                                   </EditItemTemplate>
                            </asp:TemplateField>--%>
            
            <%--<asp:TemplateField HeaderText="Posted On">
                <ItemTemplate>
                    <asp:Label ID="lbl_posted_on"  runat="server" Text='<%# Eval("tut_posted_on") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_posted_on" runat="server"  Text='<%# Eval("tut_posted_on") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>--%>
            <%--<asp:TemplateField HeaderText="Package Cost">
                <ItemTemplate>
                    <asp:Label ID="lbl_pac_cost"  runat="server" Text='<%# Eval("pac_cost") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_pac_cost" runat="server"  Text='<%# Eval("pac_cost") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>   
            <asp:TemplateField HeaderText="Package Name">
                <ItemTemplate>
                    <asp:Label ID="lbl_pac_name"  runat="server" Text='<%# Eval("pac_name") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_pac_name" runat="server"  Text='<%# Eval("pac_name") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>    

            <asp:TemplateField HeaderText="Taken On">
                <ItemTemplate>
                    <asp:Label ID="lbl_taken_on"  runat="server" Text='<%# Eval("taken_on") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_taken_on" runat="server"  Text='<%# Eval("taken_on") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>--%>
            <%--<asp:TemplateField HeaderText="Days Remaining To Expiry">
             <ItemTemplate>
                    <asp:Label ID="lbl_days"  runat="server" Text='<%# Eval("days") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <%--<asp:TemplateField HeaderText="Expiry On">
                <ItemTemplate>
                    <asp:Label ID="lbl_expiry"  runat="server" Text='<%# Eval("expiry_date") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_expiry" runat="server"  Text='<%# Eval("expiry_date") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>--%>

           <%-- <asp:TemplateField HeaderText="Leads Remaining">
                <ItemTemplate>
                    <asp:Label ID="lbl_leads"  runat="server" Text='<%# Eval("leads_remaining") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_leads" runat="server"  Text='<%# Eval("leads_remaining") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Total Leads">
                <ItemTemplate>
                    <asp:Label ID="lbl_leads"  runat="server" Text='<%# Eval("leads_remaining") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_leads" runat="server"  Text='<%# Eval("leads_remaining") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>--%>


            <%--<asp:CommandField  HeaderText="Edit" ShowEditButton="true" ShowHeader="true" ButtonType="Button"/>
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" ButtonType="Button"/>--%>
            <%-- <asp:TemplateField HeaderText ="View Full Details">
                <ItemTemplate>
                    <a href='tutor_profile.aspx?ID=<%# Eval("tut_id") %>&Name=<%# Eval("tut_name") %>' >View Detail</a>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <%--<asp:CommandField HeaderText ="View details" ShowCancelButton ="true" ShowHeader ="true" />--%>
      <%--
        </Columns>
       
    </asp:GridView>--%>

    </div>
    </div>

                                <%--<asp:DropDownList class="btn btn-default dropdown-toggle" ID="ddl_reduce" runat ="server" AutoPostBack ="true"  
                                onselectedindexchanged="ddl_reduce_SelectedIndexChanged1" >
                            
                            <asp:ListItem  Text="Select One"></asp:ListItem>
                            <asp:ListItem Text ="Show 5 items" Value ="select_top_5" ></asp:ListItem> 
                            <asp:ListItem Text ="Show 10 items" Value="select_top_10"></asp:ListItem>
                            <asp:ListItem Text ="Show 50 items" Value="select_top_50"></asp:ListItem> 
                            <asp:ListItem Text ="Show 100 items" Value="select_top_100"></asp:ListItem>
                            </asp:DropDownList>--%>
                           <%-- <cc1:TextBoxWatermarkExtender ID="tbw" TargetControlID="ddl_reduce" runat="server" WatermarkText="Select One"></cc1:TextBoxWatermarkExtender>--%>
                            <br />
                             <%--<asp:DropDownList class="btn btn-default dropdown-toggle" ID="ddl_sort" 
                                runat ="server" AutoPostBack ="true" onselectedindexchanged="ddl_sort_SelectedIndexChanged">
                            
                            <asp:ListItem Text="Select One" ></asp:ListItem>
                            <asp:ListItem Text ="Sort A/C to Paid on" Value ="taken_on" ></asp:ListItem> 
                            <asp:ListItem Text ="Sort A/C to Expiry" Value="expiry_date"></asp:ListItem>
                            <asp:ListItem Text ="Sort A/C to Leads Remaining" Value="leads_remaining"></asp:ListItem> 
                                                        </asp:DropDownList>--%>
                            <br />
                          </div>   
                       </li>                    
                </ul>
                <br />
                <!--  search form end -->   
    





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




