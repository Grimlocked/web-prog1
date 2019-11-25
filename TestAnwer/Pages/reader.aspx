<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reader.aspx.cs" Inherits="webTest.Pages.reader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body style="background-color:#728287; color:whitesmoke;">
    <center>
    <h1>Web Prog 1</h1>
    <h2>Test 1 - Insert Form and Read Results</h2>
    <hr style="border-color:whitesmoke;"/>
    <p><a href="index.aspx"><button type="button" class="btn btn-info">Home/Sign up</button></a> <a href="reader.aspx?p=r"><button type="button" class="btn btn-info">List of users</button></a></p>
    <hr style="border-color:whitesmoke;"/>
<table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>User Name</th>
        </tr>
        
            <%
                
                foreach (ArrayList r in rs)
                {
                    %><tr><%
                            
                              foreach (object res in r)
                              {
                                %><td><%=res%></td>
                             <% 
                                 }%>
                        
                   </tr>
        <%
               
            }
            %>
            
    </table>
        </center>
</body>
</html>
