<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LunchActually_TechnicalAssignment.Admin.Login1" %>

<!DOCTYPE html>

<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Epic Consulting | Login</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/uniform.default.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="../css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="../css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="../css/plugins-md.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="../css/login-4.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <!-- END THEME LAYOUT STYLES -->
        
    <!-- END HEAD -->
</head>
    <body class=" login">
        <!-- BEGIN LOGO -->
        <div class="logo">
            <a href="index.html">
                <img src="../images/Logo.png" style="width:300px !important;height:auto;" alt="" /> </a>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <form id="form1" runat="server">
                <h3 class="form-title">Login to your account</h3>
                <div runat="server" id="DivInvalid" class="alert alert-danger display-hide">
                    <button class="close" data-close="alert"></button>
                    <span>Invalid username or password. </span>
                </div>
                <div class="form-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <div class="input-icon">
                        <i class="fa fa-user"></i>
                        <input class="form-control placeholder-no-fix" runat="server" id="username" type="text" autocomplete="off" placeholder="Username" name="username" /> </div>
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <div class="input-icon">
                        <i class="fa fa-lock"></i>
                        <input class="form-control placeholder-no-fix" id="passowrd" runat="server" type="password" autocomplete="off" placeholder="Password" name="password" /> </div>
                </div>
                <div class="form-actions">
                   <%-- <label class="checkbox">
                        <input type="checkbox" name="remember" value="1" /> Remember me </label>--%>
                    <asp:Button runat="server" id="btnSubmit" class="btn green pull-right" Text="LogIn" OnClick="btnSubmit_Click" />
                   
                </div>
                </form>
            <!-- END LOGIN FORM -->
        </div>
        <!-- END LOGIN -->
        <!-- BEGIN COPYRIGHT -->
        <div class="copyright"> 2019 &copy; Lunch Actually - Admin Dashboard. </div>
        <!-- END COPYRIGHT -->
       
       <script src="Vendor/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="Vendor/bootstrap/dist/js/bootstrap.js"></script>
        <script src="../js/js.cookie.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="../js/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="../js/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../js/jquery.uniform.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/additional-methods.min.js" type="text/javascript"></script>
        <script src="../js/select2.full.min.js" type="text/javascript"></script>
        <script src="../js/jquery.backstretch.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../js/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="../js/login-4.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>
