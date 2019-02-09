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
<title>Update Profile</title>
<script type="text/javascript" src="js/country.js"></script>
<link href="css/forms.css" rel='stylesheet' type='text/css' />
</head>

<body onload="document.update.fname.focus()">
<jsp:include page="header.jsp"></jsp:include>

<pre>

</pre>

<form name="update" action="UpdateServlet" method="post"> 
<ul class="form-style-1">

    <li><label>First Name <span class="required">*</span></label>
    	<input type="text" name="fname" value="${fn}" class="field-divided" placeholder="First Name" />	
    </li>
    
    <li><label>Middle Name <span class="required">*</span></label>
    	<input type="text" name="mname"  value="${mn}" class="field-divided" placeholder="Middle Name" />
    </li>
    
    <li><label>Last Name <span class="required">*</span></label>
    	<input type="text" name="lname" value="${ln}" class="field-divided" placeholder="Last Name" />
    </li>
         <li><label>Contact No. <span class="required">*</span></label>
    	<input type="tel" name="con"  value="${con}" class="field-divided" placeholder="contact no" maxlength="10" />
    </li>
	
    <li>
        <label>Email <span class="required">*</span></label>
         ${email}
        <input type="hidden" name="email" value="${email}" class="field-long" placeholder="Enter emailid"/>
    </li>
    
    <li>
        <label>Address <span class="required">*</span></label>
        <textarea name="add"  id="field5" value="${add}" placeholder="Enter address" class="field-long field-textarea"></textarea>
    </li>
	 <li><label>Date of Birth <span class="required">*</span></label>
    	<input type="date" name="dob" value="${dob}"  class="field-divided" />
    </li>
   
    <li>
       <input type="submit" value="Submit" />
    </li>
</ul>
<script type="text/javascript">
populateCountries("country","state");
</script>

</form>
</body>
</html>
