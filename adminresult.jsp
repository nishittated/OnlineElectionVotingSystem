<!-- Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE. 
 */ -->
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>     
  	<%@page import="model.Model, dao.Dao, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Give Vote</title>
</head>
<jsp:include page="header.jsp"></jsp:include> 
<body>
<br><br><br><br><br><br><br><br>
<center>

<table border="7px" padding="10px" cellspacing="10px">
<%

String sql = "select * from candidate";
int i = 0;
Dao d = new Dao();

try
{
ArrayList<ArrayList> list = new ArrayList<ArrayList>(); 
	ResultSet rs = d.validate1(sql);
	while(rs.next()) 
	{
		String party = rs.getString(1);
		String vote = rs.getString(7);
		
		list.add(new ArrayList<String>());
		list.get(i).add(party);
		list.get(i).add(vote);	
		i++;
	}	
	HttpSession session1 = request.getSession();
	session1.setAttribute("nlist",list);
}
catch(Exception e)
{
	e.printStackTrace();
}

ArrayList<ArrayList> a = (ArrayList<ArrayList>)session.getAttribute("nlist");

for(int j=0;j<a.size();j++){
	
	%>
	
	<tr>
	<td>
		<b><p>Party Name:&nbsp; <%= a.get(j).get(0) %></p></b>
	</td>

	<td>
	 	<b>Number of Vote:<input type="text" value="<%= a.get(j).get(1)%>"></b>
	</td>
		
	</tr>
	<%
}
String sql2 = "SELECT MAX(vote) FROM candidate";
ResultSet rs = d.validate1(sql2);
while(rs.next())
{
 String l = rs.getString(1);
 //String pname = rs.getString(1);
 HttpSession session2 = request.getSession();
 session2.setAttribute("l",l);
 //HttpSession session3 = request.getSession();
 //session3.setAttribute("pname",pname);
}
String votenum = session.getAttribute("l").toString();
//String votenum = session.getAttribute("pname").toString();
%>
<p><font color="red"><b>"Winner is party with number of votes <%= votenum %> "</b></font></p>

</table>
<br><br><br>
</center>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
