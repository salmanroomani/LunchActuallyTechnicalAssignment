using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace LunchActually_TechnicalAssignment.Admin
{
    public class AdminPanel
    {
        LunchActuallyEntities iDB = new LunchActuallyEntities();
        public bool Login(string UserName, string Password)
        {
            string Pass = getMD5Hash(Password);
            Login entity = iDB.Logins.Where(o => o.Username == UserName && o.Password == Pass).FirstOrDefault();
            if (entity == null)
                return false;
            else
                return true;
        }
        public string getMD5Hash(string passwd)
        {
            MD5CryptoServiceProvider x = new MD5CryptoServiceProvider();
            byte[] bs = Encoding.UTF8.GetBytes(passwd);
            bs = x.ComputeHash(bs);
            StringBuilder str = new StringBuilder();
            foreach (byte b in bs)
            {
                str.Append(b.ToString("x2").ToLower());
            }
            string password = str.ToString();
            return password;
        }
        //Inserting Hotel in Database
        public bool InsertHotel(Hotel Hotel)
        {
            try
            {
                iDB.Hotels.Add(Hotel);
                iDB.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }

        }
        //Getting a single Hotel based on HotelID
        public Hotel GetSingleHotel(long Id)
        {

            Hotel Hotel = iDB.Hotels.Where(o => o.HotelID == Id).FirstOrDefault();
            return Hotel;
        }

        // Deleting Hotel Based on HotelID
        public string DeleteHotel(int id)
        {
            try
            {
                Hotel Hotel = iDB.Hotels.Where(o => o.HotelID == id).FirstOrDefault();
                iDB.Hotels.Remove(Hotel);
                iDB.SaveChanges();
                return "true";
            }
            catch
            {
                return "false";
            }

        }
        // Updating Hotel information
        public bool UpdateHotel(Hotel Hotel)
        {
            try
            {
                Hotel PreviourHotel = iDB.Hotels.Where(o => o.HotelID == Hotel.HotelID).FirstOrDefault();
                PreviourHotel.HotelName = Hotel.HotelName;
                PreviourHotel.HotelCity = Hotel.HotelCity;
                PreviourHotel.HotelCountry = 1; // Since we have not added a country filter in our application , we will always keep the country id as 1 (which means Thailand).
                PreviourHotel.NumberOfRooms = Hotel.NumberOfRooms;
                PreviourHotel.ContactNumber = Hotel.ContactNumber;
                PreviourHotel.HotelAddress = Hotel.HotelAddress;
                PreviourHotel.StarRatings = Hotel.StarRatings;
                PreviourHotel.HotelWebsite = Hotel.HotelWebsite;
                PreviourHotel.UpdateDate = Hotel.UpdateDate;
                iDB.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }

        }
        // Getting a list of all the Hotels
        public object GetAllHotels()
        {
            var AllHotels = iDB.Hotels.ToList();
            return AllHotels;

        }

    }
}