<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebProg1Test1.Pages.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Prog 1</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>
    <h1 class="container" style="text-align">Web Prog 1</h1>
    <p class="container">Test 1 - Insert Form and Read Results</p>

    <div>
        <a href="Index.aspx"><button id="Idx">Home Sign Up</button></a>
        <a href="List.aspx"><button id="Lst">List of Users</button></a>
    </div>
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Username</th>
        </tr>
        
            <%
                string sId = "";
                foreach (ArrayList r in outAl)
                {
                    %><tr><%
                              int i = 0;
                              foreach (object res in r)
                              {
                                  if (i == 0)
                                  {
                                      sId = res.ToString();
                                  }
                                %><td><%=res%></td>
                             <% i++;
                                 }%>
                        
                    </tr>
        <%
                sId = "";
                i = 0;
            }
            %>
            
    </table>
</body>
</html>
