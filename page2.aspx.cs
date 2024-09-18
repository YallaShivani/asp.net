using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name1 = Request.QueryString["textfn"];
            string name2 = Request.QueryString["textln"];
            Response.Write("<h2>Your Registration is Successful</h2> Click on Login button to check the details.\n");

        }
    }
}