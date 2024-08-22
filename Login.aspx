<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <style>
        body {
            background: #fff;
            font-family: 'Century Gothic';
            background: url('img/img1.jpg');
            background-size: cover;
        }

        .col-md-6 {
            background:rgba(221, 221, 221, 0.61);
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <br />
        <br />
        <div class="container containers">
            <div class="col-md-6 col-md-offset-3">
                <h2 class="col-md-offset-3">Login Here</h2>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3">User Type</label>
                        <div class="col-md-7">
                            <asp:DropDownList ID="ddlUser" runat="server" CssClass="form-control">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Public User</asp:ListItem>
                                <asp:ListItem>Department Section</asp:ListItem>
                            </asp:DropDownList>
                            

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">EmailId</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtEmailId" placeholder="EmailId" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmailId" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter EmailId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Password</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-7 col-md-offset-3">
                            <asp:Button ID="btnSave" runat="server" Text="Login " CssClass="btn btn-primary form-control" OnClick="btnSave_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
