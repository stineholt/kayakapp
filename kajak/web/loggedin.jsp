
<%@page import="java.util.List"%>
<%@page import="Domain.User"%>
<%@page import="Domain.kajak"%>
<%@page import="java.util.ArrayList"%>
<%-- 
    Document   : loggedin
    Created on : 21-11-2016, 13:41:43
    Author     : sbh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged in</title>
        <style>
            table{ border:1px solid black; border-spacing: 5px 10px;  text-align: left;}
        </style>
    </head>
    <link href="css/jspStyles.css" rel="stylesheet" type="text/css"/>
    <body>
        <h1>Liste med alle brugere</h1>
        
        
        <div class="menubar">
            Logget ind som: <%= session.getAttribute("username") %>
            <% 
            // denne sektion sørger for at prøver man at komme ind på denne sidde via URL så vil den se at man ikke er logget ind og kaste en tilbage til login siden //
            if(session.getAttribute("username") == null){
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }
            %>  
            
            <form action="Login" method="POST">
                <input type="hidden" name="origin" value="logout">
                <input type="submit" value="Logout">
            </form>
            
        </div>      
        <div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                </tr>
                
            <% 
              //Går igennem listen fra usermappen (sendt med sessionen) og paster den i en tabel derfor bruges for loop //
                List<User> users = (List<User>)session.getAttribute("userlist");
                for(User user : users){
                    out.println("<tr><th>"+user.getId()+"</th><th>"+user.getUsername()+"</tr>");
                }
            %>  
            
            </table>
        </div>
            
            <div>
            <table>
                <tbody>
                <tr>
                    <th>ID</th>
                    <th>Kajak navn</th>
                    <th>Beskrivelse</th>
                    <th>År</th>
                    <th>Længde</th>
                </tr>
                
            <% 
              //Går igennem listen fra usermappen (sendt med sessionen) og paster den i en tabel derfor bruges for loop //
                List<kajak> kajaks = (List<kajak>)session.getAttribute("KajakListe");
                for(kajak Kajak : kajaks){
                    out.println("<tr><th>"+Kajak.getId()+"</th><th>"+Kajak.getKayakname()+"</th><th>"+Kajak.getYear()+"</th><th>"+Kajak.getLength()+"</tr>");
                }
            %>  
                </tbody>
            </table>
        </div>
        


        
</table>
    </body>
</html>
