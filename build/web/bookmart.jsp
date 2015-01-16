<%-- 
    Document   : bookmart
    Created on : Feb 13, 2014, 3:38:59 PM
    Author     : $abzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>We Share - Online Book Mart</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
        
        <script src="Scripts/jquery-1.10.2.min.js"></script>
         <script src="Scripts/swiper.js"></script>
           <script src="Scripts/tab.js"></script>
           
         
         <link rel="stylesheet" type="text/css" href="bodyswipe.css" />
         <link rel="stylesheet" type="text/css" href="tabs.css" />
        
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
            out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face='Calibri'> Hi , "+Usersession.getAttribute("Name")+"</font>");
        }
 %>
        </div>
        
    <!-- End Of Header--->   
      
        
    <!-- Swiper -->
    <div class="container" style="
    width: 500px;
    height: 747px;
" >
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
     <ul id="tabs">
        <li>
    <a href="#" title="tab1">Buy
       
        
      
                    
            
            
            
        
    </a></li>
        
        
        
     
    
    
    
    
    
  
    
    
    
    
    
    
    <li><a href="#" title="tab2">Sell</a></li>
     
    </ul>
        
       
   <div id="content" style=" padding-left: 45px; padding-right: 640px; padding-top: 30px; height: 1000px;"> 
    
     
    
       <form>
           
           <font face="Calibri">
                        

   
    <div id="tab1" style="display: none; width: 480px; height: 580px; padding-left: 10px; padding-bottom: 50px; padding-right: 130px;">
  
<br>
<br>
Book ID  &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   :&nbsp;<font face="Calibri"><font face="Calibri">
&nbsp;<input type="text" size="5">
</font><br><br />

BookName&nbsp; &nbsp; &nbsp;&nbsp;        :&nbsp;
<input name="bname" type="text" size="40">&nbsp;&nbsp;<br><br>





Deptartment &nbsp;&nbsp; :&nbsp; 

<select name="bdept">
<option value="BE-ECE" selected>BE-ECE</option>
<option value="BE-EEE">BE-EEE</option>
<option value="BE-CSE">BE-CSE</option>
<option value="BE-Mech">BE-Mech</option>
<option value="BTEch-IT">BTech-IT</option>
</select>
<br>
<br>

Year &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; :&nbsp; 
<select name="byear">
<option value="1" selected>1st Year</option>
<option value="2">2nd Year</option>
<option value="3">3rd Year</option>
<option value="4">4th Year</option>
</select>
<br>
<br>

Semester&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;  
<select name="bsem">
<option value="1" selected>1st SEM</option>
<option value="2">2nd SEM</option>
<option value="3">3rd SEM</option>
<option value="4">4th SEM</option>
<option value="5">5th SEM</option>
<option value="6">6th SEM</option>
<option value="7">7th SEM</option>
<option value="8">8th SEM</option>
</select>
<br>
<br>
Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;   &nbsp; :&nbsp; 

<input type="radio" name="btype" value=""> Foriegn Author  &nbsp;&nbsp;&nbsp; 
<input type="radio" name="btype" value=""> Local Author<br><br>


Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;    :&nbsp; 

 <input type="radio" name="bcat" value=""> Photocopy &nbsp;&nbsp;&nbsp;&nbsp; 
 &nbsp  <input type="radio" name="bcat" value=""> TextBook<br><br>&nbsp;&nbsp;


<br>
<br>
<center>&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;<center>


<center><input type="submit" value="Search"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset"/></center>


  </div>
           </font>
       </form>
                
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   <form > 
        <font face="Calibri">
       
    <div id="tab2" style="display: block; width: 480px; height: 580px; padding-left: 10px; padding-bottom: 50px; padding-right: 130px;padding-top: -100;">
        
        <%
        String id;
        id="A100";
        
%>              
        
<br>
<br>
Book ID&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<font face="Calibri"><font face="Calibri">
&nbsp;<input type="text" size="4">
</font></font><br>
<br>

BookName&nbsp; &nbsp;&nbsp;&nbsp;	 :&nbsp;<font face="Calibri"><font face="Calibri">
&nbsp;<input type="text" size="40">
</font></font>&nbsp;<br>
<br>

AuthorName&nbsp; &nbsp;&nbsp;:&nbsp;  
<input type="text" size="40">&nbsp;&nbsp;<br><br>



Deptartment &nbsp;&nbsp; :&nbsp; 

<select name="dropdown">
<option value="BE-ECE" selected>BE-ECE</option>
<option value="BE-EEE">BE-EEE</option>
<option value="BE-CSE">BE-CSE</option>
<option value="BE-Mech">BE-Mech</option>
<option value="BTEch-IT">BTech-IT</option>
</select>
<br>
<br>

Year &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; :&nbsp; 
<select name="dropdown">
<option value="1" selected>1st Year</option>
<option value="2">2nd Year</option>
<option value="3">3rd Year</option>
<option value="4">4th Year</option>
</select>
<br>
<br>

Semester&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;  
<select name="dropdown">
<option value="1" selected>1st SEM</option>
<option value="2">2nd SEM</option>
<option value="3">3rd SEM</option>
<option value="4">4th SEM</option>
<option value="5">5th SEM</option>
<option value="6">6th SEM</option>
<option value="7">7th SEM</option>
<option value="8">8th SEM</option>
</select>
<br>
<br>
Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;   &nbsp; :&nbsp; 

<font face="Calibri">
<input type="radio" name="type" value="">
</font> Foriegn Author &nbsp;&nbsp;&nbsp; 
<input type="radio" name="type" value=""> Local Author<br><br>


Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;    :&nbsp; 

 <input type="radio" name="category" value=""> 
 Photocopy &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  
 <input type="radio" name="category" value=""> TextBook<br><br>&nbsp;&nbsp;


<br>
<br>
<center>&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;<center>


<center><input type="submit" value="Submit"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset"/></center>
	</div>
        </font>
 </form>  
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

