<!-- Copyright (c) Nishit Tated. All Rights Reserved. 
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE. 
 */ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>  
<body>

<script type="text/javascript">
//scriptlet tag -in this we can write complete java code 
<%
try
{
	String ms = request.getParameter("msg"); 
	if (ms.equals("abc"))
	{%>
		alert("All fields are mandatory");
		window.location.href="login.jsp";
	<%}
	else if (ms.equals("man"))
	{%>
		alert("All fields are mandatory");
		window.location.href="contact.jsp";
	<%}
	else if (ms.equals("failed"))
	{%>
		alert("Please enter valid credentials");
		window.location.href="login.jsp";
	<%}
	else if (ms.equals("captcha"))
	{%>
		alert("Please enter same captcha");
		window.location.href="signin.jsp";
	<%}
	else if (ms.equals("date"))
	{%>
		alert("Please enter valid date! You should be 18 to give vote");
		window.location.href="signin.jsp";
	<%}
	else if (ms.equals("password"))
	{%>
		alert("Please enter same password");
		window.location.href="signin.jsp";
	<%}
	else if (ms.equals("otp"))
	{%>
		alert("Otp Not Matched. Please enter correct one.");
		window.location.href="otp.jsp";
	<%}
	else if (ms.equals("PasswordSendToMail"))
	{%>
		alert("Your Website Password has sent to your mail id.");
		window.location.href="login.jsp";
	<%}
}
catch(Exception e)
{
	e.printStackTrace();
}	
%>
</script>
</body>
</html>
