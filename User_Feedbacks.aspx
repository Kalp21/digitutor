<%@ Page Title="" Language="C#" MasterPageFile="~/admin_pages/admin.master" AutoEventWireup="true" CodeFile="User_Feedbacks.aspx.cs" Inherits="admin_pages_User_Feedbacks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<title>Users Feedbacks</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

 <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i>User Feedbacks</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.aspx">Home</a></li>
						<li><i class="fa fa-files-o"></i>User Feedback</li>
					</ol>
				</div>
			</div>
              <!-- Form validations -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              FEEDBACKS FOR THE SYSTEM
                          </header>
                          <div class="panel-body">




                              <div class="form">
                               





                                       <asp:Label ID="lbl_error" runat ="server" Text ="THERE ARE NO FEEDBACKS FOR THE SYSTEM" Visible ="false" ></asp:Label>
    <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                       <div class="btn-group" >
                        
                          </div>   
                       </li>                    
                </ul>
                <br />
                <!--  search form end -->   


 <asp:GridView ID="grd_list_tutors" runat="server" AutoGenerateColumns="False"  AllowPaging="true" PageSize="3" 
                                            class="col-lg-10 "
    
         AllowSorting="true" onpageindexchanging="grd_list_tutors_PageIndexChanging" >
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("feedback_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="lbl_name" runat="server" Text='<%# Eval("feedback_name") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_name" runat="server" Text='<%# Eval("feedback_name")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
          
            <asp:TemplateField HeaderText="User Email">
                <ItemTemplate>
                    <asp:Label ID="lbl_pac_cost"  runat="server" Text='<%# Eval("feedback_email") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_pac_cost" runat="server"  Text='<%# Eval("feedback_email") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>   
            <asp:TemplateField HeaderText="Contact No.">
                <ItemTemplate>
                    <asp:Label ID="lbl_pac_name"  runat="server" Text='<%# Eval("feedback_contact_no") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_pac_name" runat="server"  Text='<%# Eval("feedback_contact_no") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>    

            <asp:TemplateField HeaderText="Feedback">
                <ItemTemplate>
                    <asp:Label ID="lbl_taken_on"  runat="server" Text='<%# Eval("feedback_message") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_taken_on" runat="server"  Text='<%# Eval("feedback_message") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Given On">
                <ItemTemplate>
                    <asp:Label ID="lbl_leads"  runat="server" Text='<%# Eval("feedback_given_on") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_leads" runat="server"  Text='<%# Eval("feedback_given_on") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            
           
        </Columns>
       
    </asp:GridView>


    
                               </div>
                           </div>
                      </section>
                  </div>
              </div>

              </section>
              </section>



   
</asp:Content>

