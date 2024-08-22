<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">



    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .intro-header {
            background: url(img/Night.png) no-repeat center center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div>
            <!-- Header -->
            <a name="about"></a>
            <div class="intro-header">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="intro-message">
                                <h1>GRIEVANCE REDRESSAL OF CLEAN INDIA</h1>
                                <h3>A Public Complaint Forum</h3>
                                <hr class="intro-divider">
                                <ul class="list-inline intro-social-buttons">
                                    <li>
                                        <a href="Register.aspx" class="btn btn-default btn-lg"><i class="fa fa-user fa-fw "></i><span class="network-name">Register</span></a>
                                    </li>
                                    <%-- <li>
                                <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                            </li>--%>
                                    <li>
                                        <a href="Login.aspx" class="btn btn-default btn-lg"><i class="fa fa-sign-in fa-fw"></i><span class="network-name">Sign in</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container -->

            </div>
            <!-- /.intro-header -->

            <!-- Page Content -->

           

            <!-- jQuery -->
            <script src="js/jquery.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>

        </div>
    </form>
</body>
</html>
