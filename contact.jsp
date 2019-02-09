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
<title>Contact Us</title>
<link href="css/forms.css" rel="stylesheet" type="text/css"> 
</head> 

<body onload="document.contact.email.focus()">
<jsp:include page="header.jsp"></jsp:include>

<pre>


</pre>
<form action="ContactServlet" method="post" name="contact">

<div style="float:left; width:50%;height:100%; margin-left:0px; margin-top:30px">
<pre>
Contact Information:

Rashtrapati Bhavan
Delhi

Mobile No.: 9876543210

</pre>
</div>

<div style="float:right; width:50%;height:100%; margin-left:0px; margin-top:55px; ">
<center>
<table>
<tr>
<td>From:</td>
<td><input type="email" name="email" size="52" placeholder="Enter emailid" maxlength="100"></td>
</tr>

<tr>
<td>Subject:</td>
<td><input type="text" name="sub" size="52" placeholder="Enter Subject" maxlength="100"></td>
</tr>

<tr>
<td>Message:</td>
<td><textarea rows="12" cols="50" name="msg"  placeholder="Enter Message" placeholder="1000"></textarea></td>
</tr>  

<tr>
<td><input type="submit" value="Send"></td>
<td><input type="reset" value="Clear"></td>
</tr>
</table>
</center>

</div>

</form>
</body>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<jsp:include page="footer.jsp"></jsp:include>
</html>
