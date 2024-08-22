<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssignWorker.aspx.cs" Inherits="AssignWorker" %>

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
        <div class="container">
            <h2 class="page-header">Assign Worker</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-4">
                        <%--<asp:Button ID="btnAssign" runat="server" Text="Assign" CssClass="btn btn-primary" OnClick="btnAssign_Click" />--%>
                    </div>
                </div>
            </div>

            <!-- Repeater for displaying assigned workers -->
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rptAssignedWorkers" runat="server" OnItemCommand="rptAssignedWorkers_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Name</th>
                            <th>Email ID</th>
                            <th>Phone Number</th>
                            <th class="text-center">Unassign</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("name") %></td>
                            <td><%# Eval("email_id") %></td>
                            <td><%# Eval("phone_number") %></td>
                            <td class="text-center">
                                <asp:LinkButton ID="lnkUnassignWorker" runat="server" CommandName="Unassign" CommandArgument='<%# Eval("Id") %>'>
                                    Assign
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
