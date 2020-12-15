using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_pages_tutor_profile : System.Web.UI.Page
{
    string adm_email;
    DataSet ds,ds1;
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
        if (Request.QueryString["Name"] != null && Request.QueryString["ID"] != null)
        {
            str1 = Request.QueryString["Name"].ToString();
            str = Request.QueryString["ID"].ToString();
     
            class_list_tutors cls = new class_list_tutors();
            ds = cls.select_from_id(Convert.ToInt32(str), "select_from_id");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txt_name.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                txt_email.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();

                txt_phone.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                txt_status.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                txt_posted_on.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                txt_pic.ImageUrl = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                txt_qualification.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();

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
            ds1 = cls.select_from_id(Convert.ToInt32(str), "select_locations");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                txt_loc.DataSource = ds1.Tables[0];
                txt_loc.DataTextField = "loc_name";
                txt_loc.DataBind();
            }
            ds1 = cls.select_from_id(Convert.ToInt32(str), "select_packages");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                txt_pac.DataSource = ds1.Tables[0];
                txt_pac.DataTextField = "pac_name";
                txt_pac.DataBind();
            }
            ds1 = cls.select_from_id(Convert.ToInt32(str), "select_class");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                txt_class.DataSource = ds1.Tables[0];
                txt_class.DataTextField = "tut_class";
                txt_class.DataBind();
            }
            ds1 = cls.select_from_id(Convert.ToInt32(str), "select_board");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                txt_board.DataSource = ds1.Tables[0];
                txt_board.DataTextField = "board_name";
                txt_board.DataBind();
            }
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("list_tutors.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}
