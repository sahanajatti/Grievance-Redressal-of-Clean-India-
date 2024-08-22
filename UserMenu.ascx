<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserMenu.ascx.cs" Inherits="UserMenu" %>
<style>
    .anc:hover {
        background: #fff !important;
        color: #000 !important;
    }

    .anc {
        color: #fff !important;
        font-size: 14px;
        font-family: 'Century Gothic';
    }

    .navbar-default {
        background: rgba(134, 120, 120, 0.6);
        height: 80px;
        padding-top: 15px;
        box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
    }

    .navbar-brand {
        font-size: 22px;
        color: #fff !important;
        font-family: 'Century Gothic';
        text-transform: uppercase;
    }
</style>
<nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
    <div class="container topnav">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand topnav" href="#">CLEAN INDIA</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <%if (Session["AdminId"] != null)
                  { %>
                <li>
                    <a class="anc" href="ViewComplaints.aspx">View Complaints</a>
                </li>
                <li>
                    <a class="anc" href="AddDepartment.aspx">Add Department</a>
                </li>
                <li>
                    <a class="anc" href="AddAuthorizeDetails.aspx">Add Authorize Person</a>
                </li>
                 <li>
                    <a class="anc" href="USERDETAILLS.aspx">User Details</a>
                </li>
                 <li>
                    <a class="anc" href="ViewFeedBack.aspx">View Feedback</a>
                </li>
                <li>
                     <a class="anc" href="AddworkerDetails.aspx">Add Worker</a>
                </li>

                <li>
                    <a class="anc" href="Logout.aspx">Logout</a>
                </li>
                <%}
                  else if (Session["UserId"] != null)
                  { %>
                <li>
                    <a class="anc" href="MyComplaints.aspx">My Complaints</a>
                </li>
                <li>
                    <a class="anc" href="ChangePassword.aspx">Change Password</a>
                </li>
                <li>
                    <a class="anc" href="AddComplaint.aspx">Add Complaints</a>
                </li>
               
                <li>
                     <a class="anc" href="Feedback.aspx">Feedback</a>
                </li>
                 <li>
                     <a class="anc" href="viewgallery.aspx">View Gallery</a>  
               </li>
                 
                <li>
                    <a class="anc" href="Logout.aspx">Logout</a>
                </li>

                <%}
                  else if (Session["AuthorizeId"] != null)
                  { %>
                <li>
                    <a class="anc" href="DeptCompliants.aspx">My Complaints</a>
                </li>
                 <li>
                    <a class="anc" href="gallery.aspx">Gallery</a>
                 </li>
                 <li>
                    <a class="anc" href="Assignworker.aspx">Assign Worker</a>
                 </li>
                <li>
                    <a class="anc" href="Logout.aspx">Logout</a>
                </li>

                <%}
                  else
                  { %>
                <li>
                    <a class="anc" href="Default.aspx">Home</a>
                </li>
                <li>
                    <a class="anc" href="Register.aspx">Register</a>
                </li>
                <li>
                    <a class="anc" href="Login.aspx">Login</a>
                </li>

                <%} %>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
