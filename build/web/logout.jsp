<%-- 
    Document   : logout
    Created on : Feb 15, 2014, 9:55:49 PM
    Author     : $abzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>We Share-Online Book Mart</title>
        
    </head>
    <body>
         
         <%
            session.setAttribute("Username", null);
           
            session.setAttribute("UserId", null);
            session.invalidate();
             String redirectURL = "inter_home.html";
             response.sendRedirect(redirectURL);
            %>
   
          
    </body>
</html>
