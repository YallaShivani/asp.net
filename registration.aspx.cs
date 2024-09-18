using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;

namespace WebApplication2
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button1_Click(object sender, EventArgs e)
        {
            string firstname = textfn.Text;
            string lastname = textln.Text;
            string username = textun.Text;
            string gender = "";
            if (radio1.Checked == true)
            {
                gender += radio1.Text;
            }
            else if(radio2.Checked== true) 
                  {
                gender += radio2.Text;
            }
            else if (string.IsNullOrEmpty(gender))
            {
                label1.Text = "Please select Gender";
            }
            string password = passwords.Text;
            string mail = email.Text;
            string number = phonenum.Text;
            string addr = address.Text;
            int agenum = Convert.ToInt32(age.Text);
            string languages = string.Empty;
            if (language1.Checked == true)
            {
                languages += language1.Text;
            }
            if (language2.Checked == true)
            {
                languages += language2.Text;
            }
            if (language3.Checked == true)
            {
                languages += language3.Text;
            }
            Session["pw"] = password;

            string country = mydropdown.SelectedValue.ToString();
            SqlConnection con = new SqlConnection("Data Source=.;User id=sa;password=sql12345;Database=master;");
            con.Open();

            string query = $"insert into register values('{firstname}','{lastname}','{username}','{gender}','{password}','{mail}','{number}','{addr}','{agenum}','{languages}','{country}')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("page2.aspx");
            con.Close();
            
            

        }
    }
}