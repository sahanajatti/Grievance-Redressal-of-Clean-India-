<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewGallery.aspx.cs" Inherits="ViewGallery" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clean India - Grievance Redressal Gallery</title>
    <!-- Include necessary CSS files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Grievance Redressal Gallery</h1>
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
