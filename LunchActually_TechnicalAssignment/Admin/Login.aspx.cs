using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LunchActually_TechnicalAssignment.Admin
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Username = username.Value;
            string Password = passowrd.Value;
            bool isLogin = new AdminPanel().Login(Username, Password);
            if (isLogin)
            {
                Session["IsUserLogin"] = true;
                Response.Redirect("Default.aspx");
            }
            else
                DivInvalid.Attributes["class"] = DivInvalid.Attributes["class"].Replace("display-hide", "");

        }
    }
}