<!-- Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System 
 * This project is licensed under the MIT License, see LICENSE.
 */ -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
     	<%@page import="model.Model, dao.Dao, java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/country.js"></script>
<link href="css/forms.css" rel='stylesheet' type='text/css' />
<title>View Campaign</title>
</head>

<%
if(session.getAttribute("email")!=null)
{
	Model m = new Model();
	ResultSet rs = Dao.validate(m,"select * from campaign");

%> 
<body>
<jsp:include page="header_admin.jsp"></jsp:include> 

<br><br><br><br><br><br>
<center><a href="add_camp.jsp"><button>Add</button></a>
    	<a href="edit_camp.jsp"><button>Edit</button></a>
    	<a href="delete_camp.jsp"><button>Delete</button></a>
    	<a href="viewcamp.jsp"><button>View</button></a>
    	</center>
<center>
    <br>
    <br>
    <br>
<table border="2">
<tr>
<th>Party Name</th>
<th>Speaker Name</th>
<th>Subject</th>
<th>City</th>
<th>Country</th>
<th>State</th>
</tr>

<%
while(rs.next())
{
  %>
	<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	</tr>
<% }%>
</table>
<%} 
else
{
	response.sendRedirect("viewcamp.jsp");
}
%>
</center>
</body>
</html>
