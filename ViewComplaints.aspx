<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewComplaints.aspx.cs" Inherits="ViewComplaints" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div class="container containers">
            <h2 class="page-header">Complaints Details</h2>
            <div class="col-md-4">
                <label>Departmet</label>
                <asp:DropDownList AutoPostBack="true" ID="ddl" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
            </div>
            <div id="divrecords" runat="server">
                <table class="table table-bordered table-condensed" style="margin-top: 30px;">
                    <asp:Repeater ID="rpt" runat="server" OnItemDataBound="rpt_ItemDataBound" OnItemCommand="rpt_ItemCommand">
                        <HeaderTemplate>
                            <tr>
                                <th>Department Name</th>
                                <th>Ward No</th>
                                <th>User Name</th>
                                <th>Complaint Date</th>
                                <th>Complaint Description</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th class="text-center col-md-1">Delete</th>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("DeptName") %></td>
                                <td><%#Eval("WardNo") %></td>
                                <td><%#Eval("FirstName") %></td>
                                <td><%#Eval("ComplaintDate") %></td>
                                <td><%#Eval("CDescription") %></td>
                                <td>
                                    <a href='<%#Eval("Picture1") %>'>
                                        <asp:Image runat="server" ID="img" Width="50" Height="50" ImageUrl='<%#Eval("Picture1") %>' /></td>
                                </a>
                            <td>
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                            </td>
                                <td class=" col-md-1 text-center">
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("ComplaintId") %>'> 
                                    <i class="glyphicon glyphicon-remove"></i>
                                    </asp:LinkButton></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>


        </div>
        <div class="container">
            <div class="alert alert-danger text-center" id="divstatus" runat="server">
                <h2>No Records Found</h2>
            </div>
        </div>
    </form>
</body>
</html>
