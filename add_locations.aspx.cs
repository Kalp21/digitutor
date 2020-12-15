using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_pages_add_locations : System.Web.UI.Page
{
    string adm_email;
    DataSet ds;
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
    }

    protected void btn_add_Click11(object sender, EventArgs e)
    {
        class_list_locations cls = new class_list_locations();
        if (txt_name.Text != "" && txt_status.Text != ""&&txt_pincode .Text !="")
        {
            ds = cls.select(txt_name.Text);
            if (ds.Tables[0].Rows.Count <= 0)
            {
                int i = cls.insert(txt_name.Text, txt_status.SelectedItem.Text.ToString(),txt_pincode .Text );
                if (i > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record inserted successfully')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record not inserted successfully')", true);

                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('This Location already in database')", true);

            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Fill The Details')", true);

        }
    }

}