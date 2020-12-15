using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_admin_login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string email, password;
    protected void btn_login_Click(object sender, EventArgs e)
    {
        email = txt_username.Text;
        password = txt_password.Text;
        class_admin_login adm = new class_admin_login();
        int i = adm.select(email, password);
        if (i == 1)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Have Successfully Logged In')", true);
            adm.update(email);
            Session["admin_email"] = email;
            Response.Redirect("dashboard.aspx");

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Wrong Username or Password')", true);
        }
    }
}