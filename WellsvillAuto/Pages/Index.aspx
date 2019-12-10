<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WellsvillAuto.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<meta name="keywords" content="ASC Auto Repair"/>
	
<title>ASC Auto Repair</title>
	<link rel="icon" href="~/images/Logo.png" type="images/gif" sizes="16x16"/>
	<link href="/CSS/base.css" rel="stylesheet"/>
	<link href="/CSS/index_styles2.css" rel="stylesheet" />
	<link href="/CSS/index_flex.css" rel="stylesheet" />
	<link href="/CSS/index_navicon.css" rel="stylesheet" />
    <script runat="server">
        void cusPhone_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            if (e.Value.Length == 10)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
                message.Text = "Phone number isn't valid";
            }
        }
    </script>
    <script runat="server">
        void ServerValidation(object source, ServerValidateEventArgs e)
        {
            try
            {
                if (e.Value.Length == 10)
                    e.IsValid = true;
            }catch(Exception ex)
            {
                e.IsValid = false;
            }
        }
        void ValidBtn_onClick(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                phoneErr.Text = "A Phone number should be 10 digits!";
            }
        }
    </script>
</head>
<body>
    <header>
		<a href="index.aspx"><img src="/images/header_Logo.png" alt="ASC Auto Repair"/></a>
		<nav class="horizontal">
			<a id="navicon" href="#">
			  <img src="images/navicon.png" alt="" />
			</a>
		</nav>
        <h1 >ASC AUTO REPAIR</h1>
	</header>
	<div>
        <asp:Label ID="message" runat="server" AssociatedControlID="Phone" />
	</div>
    <form id="InfoForm" runat="server" action="Results.aspx" method="post">
        <asp:Panel ID="CustomerInfoPane" Class="container" runat="server" >
            <div>
                <asp:Label ID="fNameLbl" runat="server" Text="First Name:"/>
                <asp:TextBox ID="fName" runat="server" />
            </div>
            <div>
                <asp:Label ID="lNameLbl" runat="server" Text="Last Name: " />
                <asp:TextBox ID="lName" runat="server" />
            </div>
            <div>
                <asp:Label ID="streetAddLbl" runat="server" Text="Street Address: " />
                <asp:TextBox ID="street" runat="server" />
            </div>
            <div>
                <asp:Label ID="cityNameLbl" runat="server" Text="City: " />
                <asp:TextBox ID="cityName" runat="server" />
            </div>
            <div>
                <asp:Label ID="StateLbl" runat="server" Text="State:" />
                <asp:TextBox ID="state" runat="server" />
            </div>
            <div>
                <asp:Label ID="zipCode" runat="server" Text="Zip Code:" />
                <asp:TextBox ID="zip" runat="server" />
            </div>
            <div>
                <asp:Label ID="emailLbl" text="eMail:" runat="server" />
                <asp:TextBox ID="email" runat="server" />
            </div>
            <div>
                <asp:Label ID="phoneErr" runat="server" />
                <asp:Label ID="PhoneLbl" runat="server" Text="Phone: " />
                <asp:TextBox ID="Phone" runat="server"  />
                 
                <asp:CustomValidator ID="cusPhone" runat="server" ControlToValidate="Phone" OnServerValidate="cusPhone_ServerValidate"  ErrorMessage="A Phone number should be 10 digits!" ValidateEmptyText="true" SetFocusOnError="true" ClientValidationFunction="ClientValidate" Display="Static" />
            </div>
            <div>
                <p>Are you a student?</p>
                <asp:RadioButtonList id="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Yes" Value="Y" />
                    <asp:ListItem Text="No" Value="N" />
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:Label ID="studentNum" text="800 Number:" runat="server" />
                <asp:TextBox ID="studID" runat="server" />
            </div>
            <br/>
            <div>
                <asp:Label ID="MakeLbl" runat="server" Text="Vehicle Make:" />
                <asp:TextBox ID="make" runat="server"  />
            </div>
            <div>
                <asp:Label ID="ModelLbl" runat="server" Text="Vehicle Model:" />
                <asp:TextBox ID="model" runat="server"  />
            </div>
            <div>
                <asp:Label ID="YearLbl" runat="server" Text="Vehicle Year:" />
                <asp:TextBox ID="year" runat="server"  />
            </div>
            <div>
                <asp:Label ID="problemLbl" runat="server" Text="What's Wrong?:" />
                <asp:TextBox ID="problem" runat="server"  />
            </div>
            <div>
                <asp:Button ID="sendItBtn" Text="Submit Form" CssClass="rounded-pill" runat="server" OnClick="ValidBtn_onClick" />
            </div>

        </asp:Panel>
        <script>
            function ClientValidate(source, arguments) {
                if (arguments.Value.length == 10) {
                    arguments.IsValid = true;
                } else {
                    arguments.IsValid = false;
                }
            }
        </script>
    </form>


	<footer>
		
	</footer>
    
</body>
</html>
