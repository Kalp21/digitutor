using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
public partial class admin_pages_Latest_payments : System.Web.UI.Page
{
    
    string adm_email;
    DataSet ds, ds1;
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
        }

        databind1();
    }



    private void databind1()
    {
        try
        {
            class_list_tutors obj = new class_list_tutors();

            string str1 = "";
            if (Request.QueryString["Loc_id"] != null)
            {
                str1 = Request.QueryString["Loc_id"].ToString();

                ds = obj.select_from_id(Convert.ToInt32(str1), "select_location_from_id");
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

            else if (Request.QueryString["sub_id"] != null)
            {
                str1 = Request.QueryString["sub_id"].ToString();

                ds = obj.select_from_id(Convert.ToInt32(str1), "select_subject_from_id");
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
            else if (Request.QueryString["pac_id"] != null)
            {
                str1 = Request.QueryString["pac_id"].ToString();

                ds = obj.select_from_id(Convert.ToInt32(str1), "select_package_from_id");
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
            else
            {
                string stat = ddl_reduce.SelectedValue.ToString();
                ds = obj.select_from_id(0, stat);
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
            //DateTime dt = new DateTime();
            //for(int i=0;i<ds.Tables[0].Rows.Count();i++)
            //dt=ds.Tables[0].Rows[i].ItemArray[5].ToString();
            
        }
        catch (Exception ex)
        { }
    }


    protected void btn_search_Click1(object sender, EventArgs e)
    {

    }
    //protected void grd_list_tutors_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{

    //}
    protected void row_cancel(object sender, GridViewCancelEditEventArgs e)
    {

    }
    protected void grd_list_tutors_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void row_deleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void row_editing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void row_updating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grd_list_tutors_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddl_reduce_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void ddl_sort_SelectedIndexChanged(object sender, EventArgs e)
    {
        class_list_tutors obj = new class_list_tutors();
        if (ddl_sort.SelectedValue == "taken_on")
        {
            ds = obj.select_from_id(0, "sort_taken_on");
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
        else if (ddl_sort.SelectedValue == "days_remaining_to_expiry")
        {
            ds = obj.select_from_id(0, "sort_expiry_date");
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
        else
        {
            ds = obj.select_from_id(0, "sort_leads_remaining");
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
    }
    protected void grd_list_tutors_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_list_tutors.PageIndex = e.NewPageIndex;
        this.databind1();
    }
    protected void grd_list_tutors_Sorting(object sender, GridViewSortEventArgs e)
    {

    }
}