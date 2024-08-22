<%@ Page Language="C#" AutoEventWireup="true" CodeFile="USERDETAILLS.aspx.cs" Inherits="USERDETAILLS" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <style>
    .css {
            box-shadow: 4px 7px 11px #EFEFEF;
            border: 1px solid;
            margin-top: 110px;
            background-color: rgba(49, 112, 143, 0.03);
        }

        th {
            font-family: 'Times New Roman', Times, serif;
            font-size: larger;
        }
        </style>
    <title></title>
</head>
<body>
    <uc1:UserMenu runat="server" ID="UserMenu" />
    <form id="form1" runat="server">
        <div class="container css containers">
            <table class="table table-bordered table-hover">
                <asp:Repeater ID="rep" runat="server" OnItemCommand="rep_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Mobile Number</th>
                            <th>Email-ID</th>
                            <th>Password
                            </th>
                            <th>Address</th>
                            <th>Delete
                            </th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("FirstName") %>
                            </td>
                            <td>
                                <%#Eval("LastName") %>
                            </td>
                            <td>
                                <%#Eval("PhoneNo") %>
                            </td>
                            <td>
                                <%#Eval("EmailId") %>
                            </td>
                            <td>
                                <%#Eval("Password") %>
                            </td>

                            <td>
                                <%#Eval("Address") %>
                            </td>
                              <td class="text-center">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%#Eval("UserId") %>'>
                                        <i class="glyphicon glyphicon-remove"></i>
                                    </asp:LinkButton>
                                </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
            <asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("UserId") %>' />
        </div>
    </form>
</body>
</html>
