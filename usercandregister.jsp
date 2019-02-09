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

<form action="registration" >
Partyname: <input type="text" name="pname" placeholder="enter party name" ><br>
Firstname: <input type="text" name="fname" placeholder="enter first name" ><br>
Lastname: <input type="text" name="lname" placeholder="enter last name" ><br>
Age: <input type="number" name="age" placeholder="enter age" ><br>
contact: <input type="tel" name="con" placeholder="enter contact" ><br>
address:<textarea rows="5" cols="10" name="add" placeholder="enter address" type="text"></textarea><br>
 
<input type="submit" name="submit" value="submit">&nbsp;&nbsp;&nbsp;<input type="button" name="submit" value="reset">
</form>
    
</body>
</html>


 
