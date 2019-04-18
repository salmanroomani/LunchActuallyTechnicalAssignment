using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LunchActually_TechnicalAssignment.Admin
{
    public partial class Hotels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod(EnableSession = false)]
        public static object GetAllHotels()
        {
            //Getting All the Hotels
            return new AdminPanel().GetAllHotels();
        }
        [WebMethod(EnableSession = true)]
        public static string DeleteHotel(int id)
        {
            // Delete a spicific hotel based on HotelID
            return new AdminPanel().DeleteHotel(id);
        }
    }
}