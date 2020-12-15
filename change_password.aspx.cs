using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_change_password : System.Web.UI.Page
{
    string adm_email;
    string oldpass;
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
    protected void btn_change_Click(object sender, EventArgs e)
    {
        oldpass = txt_oldpass.Text;
        class_admin_login adm = new class_admin_login();
        int i = adm.comppass(oldpass,txt_newpass .Text );
        if (i == 1)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Have Successfully Changed Password')", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Wrong Old Password')", true);
        }
    }
}