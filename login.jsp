<!-- Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/reg.js"></script>
<title>Login</title>
<link href="css/forms.css" rel='stylesheet' type='text/css' />
</head>

<body onload="document.register.email.focus()">
<jsp:include page="header.jsp"></jsp:include> 

<pre>


</pre>

<form name="register" action="LoginServlet" method="post">
<ul class="form-style-1">
   
   <li>
        <label>Email <span class="required">*</span></label>
        <input type="email" name="email" class="field-long" placeholder="Enter valid email" />
    </li>
    
   <li><label>Election Card No.<span class="required">*</span></label>
    	<input type="text" name="election" class="field-divided" placeholder="Enter Election card no." maxlength="10"/>
    </li>
    
    <li><label>Password <span class="required">*</span></label>
		<input type="password" name="pass" class="field-long" placeholder="Easy to remember,Hard to Guess">
	</li>
	
	
	<li>
	<a href="forgotpassword.jsp">Forget Password!!</a>
	</li>
	
    <li>
       <input type="submit" value="Login" />
    </li>
</ul>
</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
