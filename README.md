 # Lunch Actually Technical Assignment
A Web application of Hotel management with automatize booking system. The Application has 2 views. One for the end user and second for the Admin.
The Customer can only book the the Rooms while the Admin can View, Edit and cancel the bookings. The Application is synced with Google Calendar for the Admin.Admin can Add more Hotels, Room types and Room for future.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites


```
SQL Server
IIS
Visual Studio
```

### Installing

```
1. On the main Project goto foler "DbScript" Copy and paste the Script in SQL query window.
2. Change the Connection String in the Web.config
3. Deploy the Project Folder to IIS
```

## Running the tests

### Admin
```
1. first Login to the Admin Page
   localhost:port/Admin/Login.aspx
2. Log in With following Credentials
   username:admin , password: admin
3. On the Left menu start from the Top. Dashboard => It displays all the bookings. You can filter the Hotel from the Drop drown.
4. On the Top Right Corner if you press the Sync with Google Calendar, You with Go through Google Authorization and all the events of the selected Hotel will be synced with your google Calendar
5. Next is the Hotel master page. You can Add Hotels in Differenct Cities
6. Next is Room Types Master Page. You can Add Room Types to different Hotels.
7. Next is Rooms, You can Add Rooms to The above room types.
8. Last is the Bookings Tab, Admin can Create, Edit and Cancel the Bookings.
```
### Customer front end
```
1. On the Main landing page, Customer will first put the dates and check if the Rooms are availabe.
2. If available the applicaiton will redirect to the Reservation page. where the user will fill out the form to make the bookings.
3. If the dates are not available, an indication will be given to the user to either change the dates or the rooms.
```
  
## Languages Used
```
* # .Net (Entity Framework)
* Jquery
* Bootstrap
```



