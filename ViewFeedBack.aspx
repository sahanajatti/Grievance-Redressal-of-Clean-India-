<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedBack.aspx.cs" Inherits="ViewFeedBack" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            <h2 class="page-header">User FeedBack</h2>
            <table class="table table-bordered table-condensed">
                
                <asp:Repeater ID="rpt" runat="server">
                    <HeaderTemplate>
                        <tr>
                            <th>Public User Name</th>
                            <th>FeedBack Text</th>
                             <th>FeedBack Date</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("FirstName") %></td>
                            <td><%#Eval("Description") %></td>
                             <td><%#Eval("FeedDate") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
