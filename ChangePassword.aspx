<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet" />
    <!-- Custom Fonts -->

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div class="container containers">
            <div class="form-horizontal">
                <h2 class="col-md-offset-2 page-header">Change Password</h2>
                <div class="form-group">
                    <label class="col-md-2">Old Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtOldPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>

                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtOldPassword" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Old Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label class="col-md-2">Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtNewPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtNewPassword" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter New Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ID="btnUpdate" ValidationGroup="g1" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdate_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
