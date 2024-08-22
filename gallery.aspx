<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="ViewGallery" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
</head>
<body>
    <uc1:UserMenu runat="server" ID="UserMenu" />
    <form id="form1" runat="server">
        <div class="container containers">
            <h2 class="page-header">Gallery</h2>
            <div class="row">
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail">
                        <img class="img-responsive" src='img/images (1).jpg' alt="">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail">
                        <img class="img-responsive" src='img/download.jpg' alt="">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail">
                        <img class="img-responsive" src='img/images (2).jpg' alt="">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail">
                        <img class="img-responsive" src='img/images.jpg' alt="">
                    </a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
