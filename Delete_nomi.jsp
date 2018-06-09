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

<title>Delete Nominies</title>
</head>
<body>
<jsp:include page="header_admin.jsp"></jsp:include>
<br><br><br><br><br><br>
<center><a href="Add_nomi.jsp"><button>Add</button></a>
    	<a href="Edit_nomi.jsp"><button>Edit</button></a>
    	<a href="Delete_nomi.jsp"><button>Delete</button></a>
    	<a href="viewnominee.jsp"><button>View</button></a>
    	</center>
<%
if(session.getAttribute("email")!=null)
{
	Model m = new Model();
	ResultSet rs = Dao.validate(m,"select * from nominee");

%>

<table border="2">
<tr>
<th>Party Name</th>
</tr>

<%
while(rs.next())
{
  %>
	<tr>
	<td><%=rs.getString(1)%></td>	
	<td><a href="nomineepwd.jsp?party=<%=rs.getString(1)%>">Delete</a></td>
	</tr>
<% }%>
</table>
<%} 
else
{
	response.sendRedirect("Delete_nomi.jsp");
}
%>

</body>
</html>
