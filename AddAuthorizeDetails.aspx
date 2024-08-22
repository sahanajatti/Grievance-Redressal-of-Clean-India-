<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAuthorizeDetails.aspx.cs" Inherits="AddAuthorizeDetails" %>

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
    <style>
        .containers {
            background: #f1f1f1;
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
        }

        body {
            font-family: 'Century Gothic';
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div class="container containers">
            <h2 class="page-header col-md-offset-2">Add Authorize Details</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Department Name</label>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlDpt" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" InitialValue="Select" ControlToValidate="ddlDpt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Department Name " Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label class="col-md-2">FullName</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtFullName" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter FullName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="g1" Display="Dynamic" ValidationExpression="[a-z A-Z]+" ControlToValidate="txtFullName" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Alphabetics Only" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Email Id</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtEmailId" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter EmailId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="g1" Display="Dynamic" ControlToValidate="txtEmailId" ForeColor="Red" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtPwd" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label class="col-md-2">Mobile No.</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtMob" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtMob" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Mobile No." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="g1" ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ControlToValidate="txtMob" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Enter 10 Numbres"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Address</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtAddress" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Address" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ValidationGroup="g1" ID="btnAdd" CssClass="btn btn-default" runat="server" Text="Add" OnClick="btnAdd_Click1" />
                    </div>
                </div>
            </div>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Department Name</th>
                            <th>FullName</th>
                            <th>EmailId</th>
                            <th>Password</th>
                            <th>Mobile No.</th>
                            <th>Address</th>
                            <th>Delete</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("DeptName") %></td>
                            <td><%#Eval("FullName") %></td>
                            <td><%#Eval("EmailId") %></td>
                            <td><%#Eval("Password") %></td>
                            <td><%#Eval("Phone") %></td>
                            <td><%#Eval("Address") %></td>
                            <td class=" col-md-1 text-center">
                                <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("AuthorizeId") %>'> 
                                    <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
