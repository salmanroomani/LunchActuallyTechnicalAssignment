using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LunchActually_TechnicalAssignment.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.IsUserLogedIn();
            }
        }
        private void IsUserLogedIn()
        {
            if (Session["IsUserLogin"] == null || !Convert.ToBoolean(Session["IsUserLogin"]))
            {
                Response.Redirect("Login.aspx");
            }

        }
        protected void logout(object sender, EventArgs e)
        {

            Session["IsUserLogin"] = false;
            Response.Redirect("Login.aspx");
        }
    }
}