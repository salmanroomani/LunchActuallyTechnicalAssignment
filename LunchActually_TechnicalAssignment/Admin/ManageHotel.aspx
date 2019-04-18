<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageHotel.aspx.cs" Inherits="LunchActually_TechnicalAssignment.ManageHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- page content -->
    <div class="right_col" role="main">
        <div class="">
        <div class="page-title">
            <div class="title_left">
            <h3>Manage Hotel</h3>
            </div>

        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                <h2>Hotel <small>Manage</small></h2>
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

                <form runat="server" id="form1" class="form-horizontal form-label-left" >

                    <span class="section">Hotel Info</span>

                    <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Hotel Branch City <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <!-- For now this city list is static and can be made dynamic Also a country can be added before this as well -->
                        <asp:DropDownList  runat="server" id="HotelCity" class="form-control" required="required">
                             <asp:ListItem Text="Bangkok" Value="1" />
                             <asp:ListItem Text="Phuket" Value="2" />
                             <asp:ListItem Text="Pattaya" Value="3" />
                             <asp:ListItem Text="Chiang Mai" Value="4" />
                         </asp:DropDownList>
                    </div>
                    </div>
                    <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Hotel Name <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input runat="server" type="text" id="HotelName" name="HotelName" required="required" class="form-control col-md-7 col-xs-12" />
                    </div>
                    </div>
                    <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Number of Rooms <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input runat="server" type="number" id="NumberOfRooms" name="NumberOfRooms" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12" />
                    </div>
                    </div>
                    <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Star Rating 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                       <asp:DropDownList  runat="server" id="StarRatings" class="form-control" >
                             <asp:ListItem Text="1 Star" Value="1 Star" />
                             <asp:ListItem Text="2 Star" Value="2 Star" />
                             <asp:ListItem Text="3 Star" Value="3 Star" />
                             <asp:ListItem Text="4 Star" Value="4 Star" />
                             <asp:ListItem Text="5 Star" Value="5 Star" />
                             <asp:ListItem Text="No Star" Value="No Star" />
                         </asp:DropDownList> </div>
                    </div>
                    <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Telephone 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input runat="server" type="tel" id="ContactNumber" name="phone"  data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12" />
                    </div>
                    </div>
                    <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Address 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <textarea runat="server" id="HotelAddress"  name="HotelAddress" class="form-control col-md-7 col-xs-12"></textarea>
                    </div>
                    </div>
                     <div class="item form-group">
                    <label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" for="website">Website URL 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input runat="server" type="url" id="HotelWebsite" name="HotelWebsite"  placeholder="www.website.com" class="form-control col-md-7 col-xs-12" />
                    </div>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                    <div class="col-md-6 col-md-offset-3">
                        <asp:Button runat="server" id="btnSubmit" class="btn green" Text="Submit" OnClientClick="return checkAll()"  OnClick="btnSubmit_Click" />
                        <asp:Button runat="server" id="btnUpdate" Visible="false" class="btn yellow" Text="Update" OnClick="btnUpdate_Click" />                                                     
                        <a  onclick="location.href = 'Hotels.aspx';" class="btn gray">Cancel</a>
                    </div>
                    </div>
                </form>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
    <!-- /page content -->
  
</asp:Content>
