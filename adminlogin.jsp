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
<title>Insert title here</title>
</head>  
<body>
<jsp:include page="header_admin.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<br>
<br>
<form action="AdminLogin" method="post">
<center>

<table>   
<tr>
<td>Emailid: </td>
<td><input type="email" name="email"></td>
</tr>

<tr> 
<td>Password: </td>
<td><input type="password" name="pass"></td>
</tr>

<tr>
<td><input type="submit" value="Login"></td>
<td><input type="reset" value="Clear"></td>
</tr>
</table>

</center>
</form>
</body>
</html>
