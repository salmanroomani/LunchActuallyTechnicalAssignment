<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Hotels.aspx.cs" Inherits="LunchActually_TechnicalAssignment.Admin.Hotels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!-- Datatables -->
    <link href="Vendor/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- page content -->
    <div class="right_col" role="main">
        <div class="">
        <div class="page-title">
            <div class="title_left">
            <h3>Hotels <small>List of all the Hotel Branches</small></h3>
            </div>
        </div>
        <div class="title_right">
            <div class="col-md-1 col-sm-1 col-xs-1 form-group pull-right top_search">
                <div class="input-group">
                <a href="ManageHotel.aspx"  class="btn btn-warning" >Add Hotel</a>
                </div>
            </div>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                <h2>Manage Hotels<small></small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                    </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    
                <table id="datatable_Hotels" class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>Hotel Name</th>
                        <th>City</th>
                        <th>Address</th>
                        <th>Number of Rooms</th>
                        <th>Contact Number</th>
                        <th>Star Rating</th>
                        <th>Action</th>
                    </tr>
                    </thead>

                </table>
                </div>
            </div>
            </div>

            </div>
        </div>
        
    <!-- /page content -->

    <!-- Datatables -->
    <script src="Vendor/datatables.net/js/jquery.dataTables.min.js"></script>
<script>
    //Calling Ajax Function to Get all Hotels 
    $(document).ready(function () {          
        $.ajax({
            type: "POST",
            url: '<%= ResolveUrl("~/Admin/Hotels.aspx/GetAllHotels") %>',
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                // On Success populate the DataTable
                t = $('#datatable_Hotels').DataTable({
                    "order": [0, "desc"],
                    "data": data.d,
                    "scrollX": false,
                    "pageLength": 50,
                    "columns": [                          
                        { "data": "HotelName" },
                        { 
                            data: 'HotelCity', 
                            render: function(data) { 
                                if(data == "1") {
                                    return 'Bangkok' 
                                }
                                else if (data == "2") {
                                    return 'Phuket'
                                }
                                else if (data == "3") {
                                    return 'Pattaya'
                                }
                                else if (data == "4") {
                                    return 'Chiang Mai'
                                } 
                                else {
                                    return ''
                                }

                            },
                        },
                        { "data": "HotelAddress" },
                        { "data": "NumberOfRooms" },
                        { "data": "ContactNumber" },
                        { "data": "StarRatings" },
                        {
                            "data": "HotelID",
                            "orderable": false,
                            "render": function (data, type, row, meta) {

                                var html = '<a   href="'+'<%= ResolveUrl("~/Admin/ManageHotel.aspx?&id=") %>'+data+'"  class="btn btn-primary">Edit</a><a onclick="if(confirm(\'Are you sure?\')) DeleteCourse('+data+');"   class="btn btn-danger">Delete</a>'
                                return html;
                            }
                        }
                    ]
                });
                $("#loading").hide();
            },
            failure: function (xhr, status, error) {

            },
            error: function (xhr, status, error) {

            }


        });
    });
</script>
<script>
     function DeleteCourse(id)
        {
              $.ajax({
                type: "POST",
                url: '<%= ResolveUrl("~/Admin/Hotels.aspx/DeleteHotel") %>',
                data: JSON.stringify({id:id }),
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if(data.d=="true")
                    {
                        location.reload();
                    }
                },
                failure: function (xhr, status, error) {
                },
                error: function (xhr, status, error) {
                }

            });

        }
</script>
   
</asp:Content>
