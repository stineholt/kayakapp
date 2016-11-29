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
        <form action="Login" method="POST">
            <input type="text" name="username" value="" /><br>
            <input type="text" name="password" value="" /><br>
            <input type="submit" value="Log in" /><br><br>
        </form>
        <form action="createNewUser.jsp" method="GET">
            <input type="submit" value="Sign up" />
        </form>
    </body>
</html>
