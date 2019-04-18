using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LunchActually_TechnicalAssignment
{
    public partial class ManageHotel : System.Web.UI.Page
    {
        public string HotelID = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.GetPostBackEventReference(this, string.Empty);

            HotelID = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                // If there is ID on the URL this means that this is an hotel edit page, So we populate the data using this ID
                if (!string.IsNullOrEmpty(HotelID))
                {
                    long Id = long.Parse(HotelID);
                    Admin.Hotel Hotel = new Admin.AdminPanel().GetSingleHotel(Id);
                    HotelName.Value = Hotel.HotelName;
                    HotelCity.SelectedValue = Convert.ToString(Hotel.HotelCity);
                    HotelAddress.Value = Hotel.HotelAddress;
                    HotelWebsite.Value = Hotel.HotelWebsite;
                    StarRatings.SelectedValue = Hotel.StarRatings;
                    NumberOfRooms.Value = Convert.ToString(Hotel.NumberOfRooms);
                    ContactNumber.Value = Hotel.ContactNumber;
                    btnSubmit.Visible = false;
                    btnUpdate.Visible = true;
                }
            }

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string txtHotelName = HotelName.Value;
            int txtHotelCity = Convert.ToInt16(HotelCity.SelectedValue);
            string txtHotelAddress = HotelAddress.Value;
            string txtHotelWebsite = HotelWebsite.Value;
            string txtStarRatings = StarRatings.SelectedValue;
            string txtNumberOfRooms = NumberOfRooms.Value;
            string txtContactNumber = ContactNumber.Value;


            if ((txtHotelName == "") || (txtNumberOfRooms == "") )
            {
                Response.Write("<script>alert('Fill out the Required Fields');</script>");
            }
            else
            {
                //err.Attributes["class"] = err.Attributes["class"].Replace("display-Block", "display-hide");
                Admin.Hotel Hotel = new Admin.Hotel();
                Hotel.HotelName = txtHotelName;
                Hotel.HotelCity = txtHotelCity;
                Hotel.HotelCountry = 1; // This will always be 1 because we have not added Country Feature in the application yet. This is for future purpose
                Hotel.HotelAddress = txtHotelAddress;
                Hotel.HotelWebsite = txtHotelWebsite;
                Hotel.StarRatings = txtStarRatings;
                Hotel.NumberOfRooms = Convert.ToInt16(txtNumberOfRooms);
                Hotel.ContactNumber = txtContactNumber;
                Hotel.InsertDate = DateTime.Now;
                Hotel.UpdateDate = DateTime.Now;
                bool InsertHotel = new Admin.AdminPanel().InsertHotel(Hotel);
                if (InsertHotel)
                {
                    Response.Redirect("Hotels.aspx");
                }
                else
                    Response.Write("<script>alert('There was an error inserting the Hotel into the database. Please try again');</script>");

            }

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string txtHotelName = HotelName.Value;
            int txtHotelCity = Convert.ToInt16(HotelCity.SelectedValue);
            string txtHotelAddress = HotelAddress.Value;
            string txtHotelWebsite = HotelWebsite.Value;
            string txtStarRatings = StarRatings.SelectedValue;
            string txtNumberOfRooms = NumberOfRooms.Value;
            string txtContactNumber = ContactNumber.Value;
            
            if ((txtHotelName == "") || (txtNumberOfRooms == ""))
            {
                Response.Write("<script>alert('Fill out the Required Fields');</script>");

            }
            else
            {
                Admin.Hotel Hotel = new Admin.Hotel();
                Hotel.HotelID = long.Parse(HotelID);
                Hotel.HotelName = txtHotelName;
                Hotel.HotelCountry = 1; // This will always be 1 because we have not added Country Feature in the application yet. This is for future purpose
                Hotel.HotelCity = txtHotelCity;
                Hotel.HotelAddress = txtHotelAddress;
                Hotel.HotelWebsite = txtHotelWebsite;
                Hotel.StarRatings = txtStarRatings;
                Hotel.NumberOfRooms = Convert.ToInt16(txtNumberOfRooms);
                Hotel.ContactNumber = txtContactNumber;
                Hotel.UpdateDate = DateTime.Now;
                bool UpdateHotel = new Admin.AdminPanel().UpdateHotel(Hotel);
                if (UpdateHotel)
                {

                    Response.Write("<script>alert('Updated Successfully');</script>");

                }
                else
                    Response.Write("<script>alert('There was an error Updating the course. Please try again');</script>");

            }

        }

    }
}