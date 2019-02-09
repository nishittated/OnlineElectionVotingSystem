<!-- Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ -->
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
<form action="Vote" >
<table border="5px">
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
		String fname = rs.getString(2);
		String age = rs.getString(3);
		String gender = rs.getString(6);
		
		list.add(new ArrayList<String>());
		list.get(i).add(party);
		list.get(i).add(fname);
		list.get(i).add(age);
		list.get(i).add(gender);
		i++;
		
		
	}
	HttpSession session1 = request.getSession();
	session1.setAttribute("nlist",list);
}
catch(Exception e)
{
	e.printStackTrace();
}

//ArrayList<ArrayList> a= (ArrayList<ArrayList>)session.getAttribute("nlist");
ArrayList<ArrayList> a = (ArrayList<ArrayList>)session.getAttribute("nlist");

for(int j=0;j<a.size();j++){
	%>
	
	<tr>
	<td>
		<p>PartyName: &nbsp; <%= a.get(j).get(0) %></p>
	</td>
	<td>  
		<p>Name:  &nbsp;<%= a.get(j).get(1) %></p>
	</td>
	<td> 
		 <p>Age:  &nbsp;<%= a.get(j).get(2) %></p>
	</td>
	<td>
		  <p>Gender: &nbsp; <%= a.get(j).get(3) %></p>
	</td>
	<td>
	 	Vote &nbsp; <input type="radio" name="vote" value="<%= a.get(j).get(0)%>">
	</td>
	</tr>
	<% 
}
%>

</table>
<br><br><br>
<input type="submit" name="submit" value="Submit" id ="submit" >
</form>
</center>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
