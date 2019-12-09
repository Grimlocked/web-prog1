<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="WellsvillAuto.Pages.Results" %>

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

    <p>Thank you <asp:Label ID="fName" runat="server" /> <asp:Label ID="lName" runat="server" /> for signing up to have your <asp:Label ID="year" runat="server" /> <asp:Label ID="make" runat="server" /> <asp:Label ID="model" runat="server" /> serviced by us!</p>
</body>
</html>
