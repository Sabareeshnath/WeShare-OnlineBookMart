<%-- 
    Document   : register
    Created on : Jan 14, 2014, 2:33:48 PM
    Author     : $abzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="com.connect.security.*" %>
          
          
<!DOCTYPE html>
<html>
   <head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

       <title>We Share - Online Book Mart</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link href="box.css" rel="stylesheet" type="text/css" />


<script type="text/javascript"
    src="Scripts/userRegistrationValidation.js">
</script>
<script type="text/javascript">
 
</script>
</head>

   
    <body>
      
       
 <!-- Header Image And Options -->
        
	<div id="header">
	       
        <ul id="menu">
        <li>
                        <a href="inter_home.html"><img src="images/Home.gif" alt="" width="115" height="42" /></a> 
			<a href="bookmart.html"><img src="images/Book Mart.gif" alt="" width="115" height="42" /></a>
			<a href="inter_resources.html"><img src="images/Resources.gif" alt="" width="115" height="42" /></a>
			<a href="inter_aboutus.html"><img src="images/About us.gif" alt="" width="115" height="42" /></a>
                
	</ul>	
       
            
        </div>
<!-- End Of Head -->
        
       
<div style="padding: 10px 10px 20px 150px;">
<form name="registerForm" id="registerForm" method="post" action="RegisterNewUsers">
<table width="100%" id="register-box">
    <tbody>
      <tr>
        <td><span style="font-family: arial,verdana; font-size: 10pt;">
        <h2 align="center" >Please fill out the form below to register yourself:</h2>
           
<br/>
            <div align="center">
              
                  <table cellspacing="1" cellpadding="3" border="0">
                  <tbody>
                       <tr>
                      <td id="login-box-name">Name:</td>
                      <td>
                        <input type="text" class="form-login" name="name" id="txtName" onChange="validateName()" />
                        <i id="nameError"></i>
                        </td>
                                   </tr>
                                 
             
                  
                                    <tr>
                       
                        <td id="login-box-name">Department: </td>                       
                   
                         
                        <td> &nbsp;&nbsp;  <form><select name="department" id="txtDept"size="1">
                                    <option selected>BE-CSE</option>
                                    <option>BE-ECE</option>
                                    <option>BE-EEE</option>
                                    <option>BE-Mech</option>
                                    <option>BTech-IT</option>
                                </select>                        
                            </form>
                       </td>
                        
                    </tr>
                    
                    
                    
                    
                     <tr>
                      <td id="login-box-name">Batch:</td>
                      <td>
                          <input type="text" class="form-login" name="year" id="txtYear" onchange="validateYear()"  />
                        <i id="yearError"></i>
                      </td>
                    </tr>
                   
                   <tr>
                      <td id="login-box-name">Phone No.:</td>
                      <td>
                          <input type="text" class="form-login" name="phoneno" id="txtPhone" onchange="validatePhone()"  />
                      <i id="phoneError"></i>
                      </td>
                    </tr>
                     <tr>
                      <td id="login-box-name" >Email:</td>
                      <td>
                        <input type="text" class="form-login" name="email" id="txtEmail" onchange="validateEmail()"  />
                      <i id="emailError"></i>
                      </td>
                    </tr>

                   <tr>
                      <td id="login-box-name"> Register No:</td>
                      <td>
                          <input type="text" class="form-login" name="regid" id="txtRegister" onchange="validateReg()" />
                      <i id="RegError"></i>
                      </td>
                    </tr>
                    <tr>
                      <td id="login-box-name">Password:</td>
                      <td>
                          <input type="password" class="form-login" id="txtPassword" name="password" />
                       <i id="passwordError"></i>
                      </td>
                    </tr>
                    <tr>
                      <td id="login-box-name">Confirm Password:</td>
                      <td>
                          <input type="password" class="form-login" name="password2" id="txtConfirmPassword" onchange="validatePassword()" />
                     <i id="confirmpasswordError"></i>
                      </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><i id="errMain"></i></td>
                    </tr>
                         <tr>
                      <td></td>
                      <td>
                          <br />
                          <a href='javascript:registerUser()' onclick="registerUser()">
                            <img src="images/register-btn.PNG" width="83" height="38" style="margin-left:0px;" /><a/>
                        
                        <a href="inter_home.html"><img src="images/cancel-btn.PNG" width="83" height="38" style="margin-left:10px;" /></a></td>
                    </tr>
                  </tbody>
                </table>
              </div></span></td>
      </tr>
    </tbody>
  </table>
</form>

 </div>
        

   
















<div id="footer">
           
    <center>
         
    		<p>Copyright &copy; 2014. All rights reserved.<br />  Developed By ..$abzz&reg;..</p>																																																															
    </center>	
</div>  
        

        
        
    </body>
</html>
