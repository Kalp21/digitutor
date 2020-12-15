using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_pages_list_students : System.Web.UI.Page
{
    string adm_email,str1;
    DataSet ds, ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            databind1();
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
    protected void ddl_reduce_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string u = ddl_reduce.SelectedItem.Value;
        class_list_students obj = new class_list_students();
        ds = obj.showdata1(u);
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

    protected void row_cancel(object sender, GridViewCancelEditEventArgs e)
    {
        grd_list_tutors.EditIndex = -1;
        databind1();
    }
    protected void row_updating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32((grd_list_tutors.DataKeys[e.RowIndex].Value));
        GridViewRow row = (GridViewRow)grd_list_tutors.Rows[e.RowIndex];

        TextBox t1 = (TextBox)row.FindControl("txt_name");

        TextBox t2 = (TextBox)row.FindControl("txt_email");
        TextBox t3 = (TextBox)row.FindControl("txt_phone");
        TextBox t4 = (TextBox)row.FindControl("txt_posted_on");



        RadioButtonList t5 = (RadioButtonList)row.FindControl("rbl_status");
        class_list_students cls = new class_list_students();

        int i = cls.update(t1.Text, t2.Text, t3.Text, t4.Text, t5.SelectedItem.Text.ToString(), id);
        if (i > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record updated successfully')", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record not updated successfully')", true);

        }
        grd_list_tutors.EditIndex = -1;

        databind1();
    }
    protected void row_editing(object sender, GridViewEditEventArgs e)
    {
        grd_list_tutors.EditIndex = e.NewEditIndex;
        this.databind1();
    }
    protected void row_deleting(object sender, GridViewDeleteEventArgs e)
    {

        int id = Convert.ToInt32((grd_list_tutors.DataKeys[e.RowIndex].Value));
        class_list_students cls2 = new class_list_students();

        int i = cls2.delete(id);
        if (i > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record deleted successfully')", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record not deleted successfully')", true);

        }
        databind1();

    }

    private void databind1()
    {
 //try
 //       {
        class_list_students obj = new class_list_students();
     if (Request.QueryString["sub_id"] != null)
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
     else if (Request.QueryString["tut_id"] != null)
     {
         str1 = Request.QueryString["tut_id"].ToString();

         ds = obj.select_from_id(Convert.ToInt32(str1), "select_students_from_tutor_id");
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
     else if (Request.QueryString["Loc_id"] != null)
     {
         str1 = Request.QueryString["Loc_id"].ToString();

         ds = obj.select_from_id(Convert.ToInt32(str1), "select_students_from_location_id");
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
     else if (ddl_reduce.SelectedItem.Text == "Show Active" || ddl_reduce.SelectedItem.Text == "Show Inactive")
     {
         string u = ddl_reduce.SelectedItem.Value;
         ds = obj.showdata1(u);
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
         ds = obj.showdata();
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
        //}
 //    catch(Exception ex)
 //{
 //    }
    
    }
    protected void btn_search_Click1(object sender, EventArgs e)
    {
        string search = txt_search.Text;
        class_list_students obj = new class_list_students();
        ds1 = obj.filter(search);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            grd_list_tutors.DataSource = ds1;
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


    protected void grd_list_tutors_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grd_list_tutors_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_list_tutors.PageIndex = e.NewPageIndex;
        this.databind1();
    }
    protected void grd_list_tutors_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string item = e.Row.Cells[0].Text;
            foreach (Button button in e.Row.Cells[7].Controls.OfType<Button>())
            {
                if (button.CommandName == "Delete")
                {
                    button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?','DELETE')){ return false; };";
                }
            }
        }
    }
    protected void grd_list_students_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void grd_list_students_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grd_list_student_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}