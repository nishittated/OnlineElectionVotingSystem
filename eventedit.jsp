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
<script type="text/javascript" src="js/country.js"></script>
<link href="css/forms.css" rel='stylesheet' type='text/css' />
<title>Edit Event</title>
</head>       
<body>   
<jsp:include page="header_admin.jsp"></jsp:include>

<br><br><br><br><br><br>

<form name="editEvent"  action="UpdateEvent" method="post">
<ul class="form-style-1">

    <li><label>Party Name <span class="required">*</span></label>
    	<input type="text" name="party" value="${party}" class="field-divided" placeholder="Party Name" />
    </li>
    
    <li><label>Event Name <span class="required">*</span></label>
    	<input type="text" name="ename" value="${en}" class="field-divided" placeholder="Event Name" />	
    </li>
    
    <li>
    	<input type="submit" value="Update" />
       <input type="reset" value="Clear" />
    </li>
</ul>
</form>
    
</body>
</html>
