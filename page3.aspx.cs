using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{

    public partial class page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string value = Session["pw"] as string;
            string username = textbox1.Text;
            string password = textbox2.Text;
            SqlConnection con = new SqlConnection("Data Source=.;User id=sa;password=sql12345;Database=master;");
            string query = $"select pass_word from register where username='{username}'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            password = cmd.ExecuteScalar().ToString();
            if (password == value)
            {
                Response.Write($"Welcome  {username}");
                Response.Redirect("gridview.aspx");
            }
            else
            {
                Response.Write("You are invalid password");
            }
            con.Close();
        }





    }
    }
