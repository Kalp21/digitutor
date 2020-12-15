using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_pages_month_wise_earning : System.Web.UI.Page
{
    DataSet ds;
    DateTime start, end;
    string adm_email;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

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
            databind();
        }
    }
    private void databind()
    {
        class_list_tutors cls = new class_list_tutors();
        ds = cls.see_earning(DateTime.Now , DateTime.Now , "see_monthwise_earnings");

        if (ds.Tables[0].Rows.Count > 0)
        {
            grd_list_tutors.DataSource = ds;
            grd_list_tutors.DataBind();
            lbl_error.Visible = false;
        }
        else
        {
            grd_list_tutors.DataSource = null;
            grd_list_tutors.DataBind();
            lbl_error.Visible = true;
        }
    }
    //protected void btn_see_earning_Click(object sender, EventArgs e)
    //{
    //}
}