using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

public partial class admin_pages_dashboard : System.Web.UI.Page
{
    string adm_email;
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
        if (!IsPostBack)
        {
            bind();
            try
            {
                adm_email = Session["admin_email"].ToString();
            }
            catch (Exception ex)
            {
                Response.Redirect("admin_login.aspx");
            }
            Label lbl_login = (Label)Master.FindControl("admin_email");
            lbl_login.Text = adm_email;
            
        }
        
    }
    private void bind()
    {
        class_list_tutors cls = new class_list_tutors();
        int i=cls.count_totals("count_total_tutors");
        txt_tot_tutors.Text = i.ToString();
        int j = cls.count_totals("count_total_students");
        txt_tot_students.Text = j.ToString();
        txt_tot_users.Text = (i + j).ToString();
        int k = cls.count_totals("count_total_earning");
        txt_tot_earn.Text = k.ToString();
    } 
}