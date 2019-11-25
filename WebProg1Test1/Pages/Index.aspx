<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebProg1Test1.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Prog 1</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body style="background-color:#728287; color:whitesmoke;">
    <center>
    <h1 class="container" style="text-align">Web Prog 1</h1>
    <p class="container">Test 1 - Insert Form and Read Results</p>

    <div>
        <a href="Index.aspx"><button id="Idx">Home Sign Up</button></a>
        <a href="List.aspx"><button id="Lst">List of Users</button></a>
    </div>

    <div>Welcome to your Test please create an account to continue</div>
        <form id="form1" runat="server" action="List.aspx" method="post" >
            <asp:Panel ID="SubmitPane" Class="container" runat="server" >

                <div>
                    <asp:Label ID="uNameLbl" runat="server" Text="User Name:"/>
                    <asp:TextBox ID="uName" runat="server" />
                </div>

                <div>
                    <asp:Label ID="fNameLbl" runat="server" Text="First Name:"/>
                    <asp:TextBox ID="fName" runat="server" />
                </div>

                <div>
                    <asp:Label ID="lNameLbl" runat="server" Text="Last Name" />
                    <asp:TextBox ID="lName" runat="server" />
                </div>

                <div>
                    <asp:Label ID="emailLbl" text="eMail" runat="server" />
                    <asp:TextBox ID="email" runat="server" />
                </div>

                <div>
                    <asp:Label ID="passwordLbl" text="Password" runat="server" />
                    <asp:TextBox ID="pword" TextMode="Password" runat="server" />
                </div>

                <div>
                <asp:Button ID="Button1" Text="Home Sign Up" CssClass="rounded-pill" runat="server" />
                </div>

            </asp:Panel>
        </form>
    </center>
</body>
</html>
