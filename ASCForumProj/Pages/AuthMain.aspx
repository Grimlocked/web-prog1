<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthMain.aspx.cs" Inherits="ASCForumProj.Pages.AuthMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <br />
    <asp:Label runat="server" ID="mess" /><br />
    <a href="Login.aspx"><button id="up">Login</button></a>

    
    <form id="form1" action="ForumPost.aspx" runat="server">
        <div>
            <br />
        <div>
            Username:<asp:TextBox ID="un" runat="server" /><br />
            First Name:<asp:TextBox ID="fn" runat="server" /><br />
            Last Name:<asp:TextBox ID="ln" runat="server" /><br />
            Email:<asp:TextBox ID="em" runat="server" /><br />
            Password:<asp:TextBox ID="pass" TextMode="Password" runat="server" /><br />
              
        </div>
            <asp:Button ID="sendIt" Text="Sign Up!" runat="server" />
        </div>
    </form>

</body>
</html>
