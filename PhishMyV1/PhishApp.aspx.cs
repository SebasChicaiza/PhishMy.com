using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace PhishMyV1
{
    public partial class PhishApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSend_Email(object sender, EventArgs e)
        {
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod  = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("mail","password");
                MailMessage msgobj = new MailMessage();
                msgobj.To.Add(txtRecp.Text);
                msgobj.From = new MailAddress("mail", "Topic");
                msgobj.Subject = txtSubj.Text;
                msgobj.Body = txtTyp.Text;
                client.Send(msgobj);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('The phishing email has been sent succesfully');", true);

            }
            catch (Exception ex)
            {

                Response.Write("We were not able to send the email, try again" + ex.Message);
            }
        }
    }
}