<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyComplaints.aspx.cs" Inherits="MyComplaints" %>

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
                <h2 class="page-header">My Complaints</h2>
                <table class="table table-bordered table-condensed table-hover">
                    <asp:Repeater ID="rpt" runat="server" OnItemDataBound="rpt_ItemDataBound">
                        <HeaderTemplate>
                            <tr>
                                <td>Department Name</td>
                                <td>Ward No.</td>
                                <td>Image</td>
                                <td>Complaint Description</td>
                                <td>Complaint Date</td>
                                <td>Status</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("DeptName") %></td>
                                <td><%#Eval("WardNo") %></td>
                                <td>
                                    <a href='<%#Eval("Picture1") %>'>
                                        <asp:Image runat="server" ID="img" Height="50" Width="50" ImageUrl='<%#Eval("Picture1") %>'></asp:Image>
                                    </a>
                                </td>

                                <td><%#Eval("CDescription") %></td>
                                <td><%#Eval("ComplaintDate") %></td>
                                <td>
                                    <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                </td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
