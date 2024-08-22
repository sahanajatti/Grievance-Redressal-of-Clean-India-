<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<%@ Register Src="~/UserMenu.ascx" TagPrefix="uc1" TagName="UserMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <uc1:UserMenu runat="server" ID="UserMenu" />
    <form id="form1" runat="server">
        <div class="container containers">
            <div class="form-horizontal">
                <h1 class="page-header col-md-offset-2">Feed Back</h1>
                <hr />
                <div class="form-group">
                   <label class="col-md-2">Feed Back</label>
                    <div class="col-md-4">
                        <asp:TextBox runat="server" CssClass="form-control" TextMode="MultiLine"  ID="txtfeedback"/>
                    </div>
                    <asp:RequiredFieldValidator ControlToValidate="txtfeedback" ValidationGroup="fedbak" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Feedback"></asp:RequiredFieldValidator>
                
                </div>
                <div class="form-group">
                    <asp:Button Text="Submit" ID="BTNSUBMIT" CssClass="btn btn-primary col-md-offset-2" ValidationGroup="fedbak" OnClick="BTNSUBMIT_Click" runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
