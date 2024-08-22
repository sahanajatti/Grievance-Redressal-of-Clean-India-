<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeptCompliants.aspx.cs" Inherits="DeptCompliants" %>

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
       
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <uc1:UserMenu runat="server" ID="UserMenu" />
        <div class="container containers">
            <h2 class="page-header">Complaint Details</h2>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand" OnItemDataBound="rpt_ItemDataBound">
                    <HeaderTemplate>
                        <tr>

                            <th>Ward No</th>
                            <th>User Name</th>
                            <th>Complaint Date</th>
                            <th>Complaint Description</th>
                            <th>Image</th>
                            <th>Status</th>
                            <th>Attend</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("WardNo") %></td>
                            <td><%#Eval("FirstName") %></td>
                            <td><%#Eval("ComplaintDate") %></td>
                            <td><%#Eval("CDescription") %></td>
                            <asp:HiddenField ID="hfEmailId" Value='<%#Eval("EmailId") %>' runat="server" />
                            
                            <td>
                                <a href='<%#Eval("Picture1") %>'>
                                    <asp:Image runat="server" ID="img" Width="50" Height="50" ImageUrl='<%#Eval("Picture1") %>' /></td>
                            </a>
                            <td>
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                            </td>
                            <td class="text-center">
                                <asp:LinkButton ID="lnkAttend" runat="server" CommandName="Attend" CommandArgument='<%#Eval("ComplaintId") %>'>  
                                    <i class="glyphicon glyphicon-hand-up"></i>
                                </asp:LinkButton>
                                <asp:LinkButton ID="lnkComplete" runat="server" CommandName="Complete" CommandArgument='<%#Eval("ComplaintId") %>'>  
                                    <i class="glyphicon glyphicon-hand-up"></i>
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
