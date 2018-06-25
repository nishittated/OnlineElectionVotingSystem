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
<title>Forgot Password</title>
<link href="css/forms.css" rel='stylesheet' type='text/css' />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<pre> 
</pre>
<form action="ForgotServlet" method="post">
<ul class="form-style-1">
 
<br>
<br> 

<li>
	<label>Emailid: <span class="required">*</span></label>
	<input type="email" name="email" class="field-long" placeholder="Enter emailid" maxlength="100" required="required">  
</li>

<br>
<li>
	<input type="submit" value="Forgot">
	<input type="submit" value="Clear">
</li>
</ul>
<br>
<br>
<br>
</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
