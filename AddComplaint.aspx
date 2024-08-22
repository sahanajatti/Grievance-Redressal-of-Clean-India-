<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddComplaint.aspx.cs" Inherits="AddComplaint" %>

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
    <uc1:UserMenu runat="server" ID="UserMenu" />
    <form id="form1" runat="server">
        <div class="container containers">
            <h2 class="page-header col-md-offset-2">Add Complaints</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Department Name</label>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlDpt" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" InitialValue="Select" ControlToValidate="ddlDpt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Department Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Ward Id</label>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlWardId" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" InitialValue="Select" ControlToValidate="ddlWardId" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Ward No." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>

                <div class="form-group">
                    <label class="col-md-2">Upload Image</label>
                    <div class="col-md-4">
                        <asp:FileUpload ID="file" runat="server" />
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="file" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Upload Image" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Complaint Description</label>
                    <div class="col-md-4">
                        <asp:TextBox TextMode="MultiLine" ID="txtComplaintDesc" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="txtComplaintDesc" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Complaint Description" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ValidationGroup="g1" ID="btnSave" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
