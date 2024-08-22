<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="AddDepartment" %>

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

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div class="container containers">
            <h2 class="page-header col-md-offset-2">Add Department</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Department Name</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtDeptName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtDeptName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Department Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ID="btnAdd" ValidationGroup="g1" CssClass="btn btn-default" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    </div>
                </div>
            </div>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Department Name</th>
                            <th class="col-md-1 text-center">Delete</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("DeptName") %></td>
                            <td class=" col-md-1 text-center">
                                <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("DeptId") %>'> 
                                    <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton>

                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
