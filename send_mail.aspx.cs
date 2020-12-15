using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class admin_pages_send_mail : System.Web.UI.Page
{
    string adm_username="digitutorlko32@gmail.com", adm_password="digitutorlkoup32",sub="Expiry Of Your Package",bo="Please renew your package your package is going to expire-from DigiTutor.com";
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        string to= Request.QueryString["Mail"].ToString();
        MailMessage Msg = new MailMessage();
        // Sender e-mail address.
        Msg.From = new MailAddress(adm_username );
        // Recipient e-mail address.
        Msg.To.Add(to);
        Msg.Subject = sub;
        Msg.Body =bo;
        // your remote SMTP server IP.
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential(adm_username , adm_password );
        smtp.EnableSsl = true;
        smtp.Timeout = 20000;
        smtp.Send(Msg);
        Msg = null;
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('EMail send successfully')", true);
        Response.Redirect("Latest_payments.aspx");

        //}
   
        //catch (Exception ex)
    
        //{
       
        //    Console.WriteLine("{0} Exception caught.", ex);
   
        //}
    
    }
}