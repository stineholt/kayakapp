
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
        
    </head>
    <link href="css/jspStyles.css" rel="stylesheet" type="text/css"/>
    <body>
        <h1>Kajak booking</h1>
        
        
        <div class="menubar">
            <table class="menutabel">
                <tbody>
                    <tr class="a">
                        <td class="a">Logget ind som:</td>
                        <td class="a">
                            <%= session.getAttribute("username") %>
                            <% 
                            // denne sektion sørger for at prøver man at komme ind på denne sidde via URL så vil den se at man ikke er logget ind og kaste en tilbage til login siden //
                            if(session.getAttribute("username") == null){
                                request.getRequestDispatcher("login.jsp").forward(request, response);
                                return;
                            }
                            %> 
                        </td>
                        <td class="a">
                            <form action="Login" method="POST">
                                <input type="hidden" name="origin" value="logout">
                                <input type="submit" value="Logout">
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>      
        
            
        <div class="tabel">
            <h2></h2>
            <table class="kajaktabel">
                <tbody>
                <tr>
                    <th>Kajak navn</th>
                    <th>Beskrivelse</th>
                    <th>År</th>
                    <th>Længde</th>
                    <th>Dato</th>
                    <th>Book now</th>
                </tr>
                
            <% 
              //Går igennem listen fra kajakmapper (sendt med sessionen) og paster den i en tabel derfor bruges for loop //
                List<kajak> kajaks = (List<kajak>)session.getAttribute("KajakListe");
                for(kajak Kajak : kajaks){
                    out.println("<tr><td>"+Kajak.getKayakname()+"</td><td>"+Kajak.getDescription()+"</td><td>"+Kajak.getYear()+"</td><td>"+Kajak.getLength()+"</td><td> </td><td> </td>");
                }
            %>  
                </tbody>
            </table>
        </div>
        


        
</table>
    </body>
</html>
