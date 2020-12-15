using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_pages_student_profile : System.Web.UI.Page
{
    string adm_email;
    DataSet ds, ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            databind();
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
    private void databind()
    {
        string str = "";
        string str1 = "";
        str1 = Request.QueryString["Name"].ToString();
        str = Request.QueryString["ID"].ToString();
        //Response.Write(str + "</br>" + str1);
        class_list_students cls = new class_list_students();
        ds = cls.select_from_id(Convert.ToInt32(str), "select_from_id");
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_name.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            txt_email.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();

            txt_phone.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            txt_status.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            txt_posted_on.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            txt_pic.ImageUrl = ds.Tables[0].Rows[0].ItemArray[6].ToString();
           txt_board .Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
           txt_class.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        }
        else
        {

        }
        ds1 = cls.select_from_id(Convert.ToInt32(str), "select_subjects");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            txt_sub.DataSource = ds1.Tables[0];
            txt_sub.DataTextField = "sub_name";
            txt_sub.DataBind();
        }
        ds1 = cls.select_from_id(Convert.ToInt32(str), "select_responses");
        if (ds1.Tables[0].Rows.Count > 0)
        {
          txt_response .DataSource = ds1.Tables[0];
           txt_response .DataTextField = "tut_name";
           txt_response .DataBind();
        } 
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("list_students.aspx");
    }
}