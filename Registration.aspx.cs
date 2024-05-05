using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace ForestProductTracker
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string connetionString;
            

            connetionString = @"Data Source=DESKTOP-LA9385J;Initial Catalog=Forest_user_data ; integrated Security=true ";

            conn = new SqlConnection(connetionString);

            conn.Open();

    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedValue.Equals("Trader"))
                cmd = new SqlCommand("insert into dbo.TraderCredentials(Username,Password)values(@Username,@Password)",conn);

            else
                cmd = new SqlCommand("insert into dbo.ForestAuthCredentials(Username,Password)values(@Username,@Password)", conn);

            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

            int res= cmd.ExecuteNonQuery();
            if (res > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Singup Successfull');", true);
                Response.Redirect("Login.aspx");
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration error');", true);
        }

     

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}