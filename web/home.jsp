<%-- 
    Document   : homee
    Created on : Feb 9, 2014, 12:46:24 PM
    Author     : $abzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>We Share - Online Book Mart</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Scripts/jquery-1.10.2.min.js"></script>
         <script src="Scripts/swiper.js"></script>
         
         <link rel="stylesheet" type="text/css" href="bodyswipe.css" />
       
        <%@page language="java" %>
         <%@page import="java.io.*" %>
          <%@page import="java.sql.*" %>
          <%@page import="javax.servlet.*"%>
    </head>
    
    <body>
        
   <!-- Headder -->  
         
        <div id="header">
   <%   

                      
HttpSession Usersession = request.getSession(false);
if(Usersession.getAttribute("Username") == null)
       {
   response.sendRedirect("index.html");
      

}
else
          {
    %>
    
    
    
    
    <%
            out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face='Calibri'> Hi, "+Usersession.getAttribute("Name")+"</font>");
        }
 %>
                 
        </div>
        
    <!-- End Of Header--->   
    
    <!-- Swiper -->
    <div class="container">
    <div id="sidebar">
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="bookmart.jsp">Book Mart</a></li>
            <li><a href="resources.jsp">Resources</a></li>
            <li><a href="aboutus.jsp">About us</a></li>
            <li><a href="logout.jsp">Log out</a></li>
        </ul>
    </div>
    <div class="main-content">
        <div class="swipe-area"></div>
        <a href="#" data-toggle=".container" id="sidebar-toggle">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </a>
        <div class="content">
            <h1 align="center">Welcome To Book Mart</h1>
            <p style=" height: 600px; width: 600px;">If you are looking at buying "THE RIGHT BOOK" which will help you sail through the course, this is the ultimate one stop destination.
Your very own sassy, jazzy, classy seniors of RVS College Of Engineering And Technology would hand you down the books at prices more competitive than those available out in the market.<br />
From here, you can purchase books and reference materials<br /><br/>
   &nbsp;&nbsp;&nbsp;   •In the most competitive  price than those out in the market.<br />
   &nbsp;&nbsp;&nbsp;   •Directly  from your seniors of RVS College Of Engineering And Technology.<br />
   &nbsp;&nbsp;&nbsp;   •Highly recommended by the faculty and in-line with the course curriculum.<br />
           
         &nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;       &nbsp;&nbsp;&nbsp;      <img src="images/text.jpg"  widht="200" height="200"/></p>
         
        </div>
    </div>
</div>
       
  <!-- End of Swiper -->      
        
  <div id="footer">
           
    <center>
          
    		<p>Copyright &copy; 2014. All rights reserved.<br />  Developed By ..$abzz&reg;..</p>																																																															
    </center>	
</div>  
                    

        
    </body>
</html>
