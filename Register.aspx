<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <style>
        body {
            background: #fff;
            font-family: 'Century Gothic';
            background: url('img/img2.jpg');
            background-size: cover;
        }

        .col-md-6 {
            background: rgba(221, 221, 221, 0.61);
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div class="container containers">
            <div class="col-md-6 col-md-offset-3">
                <h2 class="page-header col-md-offset-3">Register Here</h2>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3">First Name</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtFname" placeholder="First Name" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtFname" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ValidationExpression="[a-zA-Z]+" ControlToValidate="txtFname" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Alphabetics Only" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Last Name</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtLname" placeholder="Last Name" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtLname" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ValidationExpression="[a-zA-Z]+" ControlToValidate="txtLname" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Alphabetics Only" ForeColor="Red"></asp:RegularExpressionValidator>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Email Id</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtEmailId" placeholder="Email Id" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmailId" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter EmailId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtEmailId" ForeColor="Red" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Password</label>
                        <div class="col-md-7">
                            <asp:TextBox TextMode="Password" ID="txtPwd" placeholder="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtPwd" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Mobile No.</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtMob" placeholder="Mobile No." runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtMob" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Mobile No." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ControlToValidate="txtMob" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Must Enter 10 Numbres"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Address</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtAddress" placeholder="Address" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtAddress" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Address" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-1 col-md-offset-3">
                            <asp:Button ID="btnSave" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
