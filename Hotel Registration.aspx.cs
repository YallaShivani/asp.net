using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Hotel_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string username = text1.Text;
            string roomtype="";
            if (radio1.Checked)
                roomtype = radio1.Text;
            else
                roomtype =radio2.Text;
            string Amenities="";
            if(check1.Checked)
                Amenities += check1.Text;
            if(check2.Checked)
                Amenities += check2.Text;
            SqlConnection con = new SqlConnection("Data Source=.;User id=sa;password=sql12345;Database=master;");
            string query = $"insert into hotel values('{username}','{roomtype}','{Amenities}')";
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("WebFormlast.aspx");
            con.Close();


        }
    }
}