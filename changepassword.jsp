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
<title>Change Password</title>

<link href="css/forms.css" rel='stylesheet' type='text/css' />
</head>
<body onload="document.cp.pass.focus()">
<jsp:include page="header.jsp"></jsp:include>

<pre>

</pre>

<form action="ChangeServlet" method="post" name="cp">

<ul class="form-style-1">

<br>
	<li><label>Old password <span class="required">*</span></label>
		<input type="password" name="pass" class="field-long" placeholder="Enter old password">
	</li>
    
    <li><label>New password <span class="required">*</span></label>
		<input type="password" name="pass1" class="field-long" placeholder="Enter new password">
	</li>
	
	<li><label>Confirm new password <span class="required">*</span></label>
		<input type="password" name="pass2" class="field-long" placeholder="Enter new comfirm password">
	</li>

    <li>
       <input type="submit" value="Change" />
       <input type="submit" value="Clear" />
    </li>
</ul>

</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
