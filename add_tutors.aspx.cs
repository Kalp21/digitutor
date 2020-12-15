using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_pages_add_tutors : System.Web.UI.Page
{
    string[] ar_boards = { "CBSE", "ICSE", "UP", "ISC" };
    int[] ar_class = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
    DataSet ds, ds1;
    string str1;
    string adm_email;
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

    protected void databind()
    {
        ViewState["Path"] = "~/admin_pages/default_pic.PNG";
        class_add_tutors cat = new class_add_tutors();
        ds1 = cat.select("select_all_subjects");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            txt_sub.DataSource = ds1.Tables[0];
            txt_sub.DataTextField = "sub_name";
            txt_sub.DataBind();
        }
        ds1 = cat.select( "select_all_locations");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            txt_loc.DataSource = ds1.Tables[0];
            txt_loc.DataTextField = "loc_name";
            txt_loc.DataBind();
        }
        ds1 = cat.select( "select_all_packages");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            txt_pac.DataSource = ds1.Tables[0];
            txt_pac.DataTextField = "pac_name";
            txt_pac.DataBind();
        }
        txt_class.DataSource = ar_class;
        txt_class.DataBind();
        txt_board.DataSource = ar_boards;
        txt_board.DataBind();
    }
    string email;
    string[] subjects; string[] locations; string[] packages; string[] boards; string[] clas;
    int[] selectedindices;
    protected void Button1_Click(object sender, EventArgs e)
    {
        selectedindices = txt_sub.GetSelectedIndices();
        subjects = new string[selectedindices.Length];
        for (int x = 0; x < selectedindices.Length ; x++)
        {
            subjects[x] = txt_sub.Items[selectedindices[x]].Text;
        }
        selectedindices = txt_loc.GetSelectedIndices();
        locations = new string[selectedindices.Length];
        for (int x = 0; x < selectedindices.Length; x++)
        {
            locations[x] = txt_loc.Items[selectedindices[x]].Text;
        }
        selectedindices = txt_pac.GetSelectedIndices();
        packages  = new string[selectedindices.Length];
        for (int x = 0; x < selectedindices.Length; x++)
        {
            packages [x] = txt_pac.Items[selectedindices[x]].Text;
        }
        selectedindices = txt_board  .GetSelectedIndices();
        boards  = new string[selectedindices.Length];
        for (int x = 0; x < selectedindices.Length; x++)
        {
            boards [x] = txt_board.Items[selectedindices[x]].Text;
        }
        selectedindices = txt_class.GetSelectedIndices();
        clas = new string[selectedindices.Length];
        for (int x = 0; x < selectedindices.Length; x++)
        {
            clas[x] = txt_class.Items[selectedindices[x]].Text;
        }
        email = txt_email.Text;
        class_add_tutors cat = new class_add_tutors();
        int i=cat.check_duplicates(email);
        if (i == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There is already a tutor with this email')", true);
        }
        else
        {
            int j = cat.insert_tutor_details(txt_name.Text, txt_email.Text, txt_phone.Text, txt_status.SelectedItem .Text , ViewState["Path"].ToString(), txt_qualification.Text);
             if (j > 0)
            {
                int k = cat.insert_other_details(subjects,locations,packages,boards,clas,txt_email.Text );
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Inserted')", true);
                
               // Response.Redirect("add_tutors.aspx");
            }
        } 
    }
    public void upload()
    {
        if (FileUpload1.HasFile)
        {
            Random r = new Random();
            str1 = "Pic/" + r.Next() + r.Next() + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(str1));
            ViewState["Path"] = str1;
        }
        else
        {
            ViewState["Path"] = "~/admin_pages/default_pic.PNG";
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        txt_board.ClearSelection();
        txt_class.ClearSelection();
        txt_email.Text = "";
        txt_loc.ClearSelection();
        txt_name.Text = "";
        txt_pac.ClearSelection();
        txt_phone.Text = "";
        txt_qualification.Text = "";
        txt_status.ClearSelection();
        txt_sub.ClearSelection();
        txt_pic.ImageUrl = "~/admin_pages/default_pic.PNG";
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
          upload();
          txt_pic .ImageUrl = ViewState["Path"].ToString();
          FileUpload1.Visible = false ;
          btn_upload.Visible = false;
    }

   
    protected void txt_pic_Click(object sender, ImageClickEventArgs e)
    {
        FileUpload1.Visible = true;
        btn_upload.Visible = true;
    }
}
