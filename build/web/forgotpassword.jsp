<%-- 
    Document   : forgotpassword
    Created on : Feb 11, 2014, 10:40:28 PM
    Author     : $abzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.connect.security.RequestPassword" %>



<html>
<head>
	<meta charset="UTF-8">
	<title>We Share Password Recovery</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
    <style type="text/css">
<!--
body,td,th {
	font-size: 12px;
	color: #000000;
	font-weight: bold;
}
body {
	background-color: #FFFFFF;
	background-image: url(images/bg-body.png);
}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>

		<div class="page">
		  <div class="footer"><p>&nbsp;</p>
		    <p>&nbsp;</p>
                    <p><b><center>To recover password</center></b> </p>
		    <p>&nbsp;</p>
		    <form method="POST" action="forgotpassword.jsp">
					<p style="margin-bottom: -12px" align="center"><font color="#FF8000" size="2" face="Verdana">Mail id: </font>
					  <input type="text" name="id" size="27" >
			  <input type="submit" value="Submit" name="submit"></p>
					<p style="margin-bottom: -12px" align="center">&nbsp;</p>
					
					<p style="margin-bottom: -12px" align="center">&nbsp;</p>
		    </form>
			
            <%
            if(request.getParameter("submit") != null) 
            {

 String id = request.getParameter("id");
 RequestPassword.sendMail(id);

 }
                    %>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		  </div>
	  </div>
	</div>
</body>
</html>