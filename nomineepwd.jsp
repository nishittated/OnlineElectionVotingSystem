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
<title>Insert title here</title>
</head> 

<%
String party = request.getParameter("party");
Model m = new Model();
int i = Dao.register(m, "delete from nominee where pn='"+party+"'");

if(i!=0)
{
	response.sendRedirect("Delete_nomi.jsp");
}
%>
<body>

</body>
</html>
