<%-- 
    Document   : login
    Created on : 16-11-2016, 20:19:58
    Author     : sbh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="NewUserServlet" method="POST">
            <h3>Udfyld for at oprette bruger:</h3>
            <table>
                <tr>
                    <td></td>
                    <td><input type="hidden" name="userid" value="20" /></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" value="" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password" value="" /></td>
                </tr>
                
                <tr><td><input type="submit" value="Create New User" /></td></tr>
            </table>
        </form>
    </body>
</html>
