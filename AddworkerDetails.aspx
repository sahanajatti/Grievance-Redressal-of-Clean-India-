<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddWorkerDetails.aspx.cs" Inherits="AddWorkerDetails" %>

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
            <h2 class="page-header">Add Worker Details</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-md-2">Name</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">Email ID</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email ID is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">Phone Number</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid phone number format." Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-4">
                        <asp:Button ID="btnAddWorker" runat="server" Text="Add Worker" CssClass="btn btn-primary" OnClick="btnAddWorker_Click" />
                    </div>
                </div>
            </div>

            <!-- Repeater for displaying worker details -->
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rptWorkers" runat="server" OnItemCommand="rptWorkers_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Name</th>
                            <th>Email ID</th>
                            <th>Phone Number</th>
                            <th class="text-center">Delete</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("name") %></td>
                            <td><%# Eval("email_id") %></td>
                            <td><%# Eval("phone_number") %></td>
                            <td class="text-center">
                                <asp:LinkButton ID="lnkDeleteWorker" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Id") %>'>
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
