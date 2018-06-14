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
<title>Edit Candidate</title>
<link href="css/forms.css" rel='stylesheet' type='text/css' />
</head>
<body>

<jsp:include page="header_admin.jsp"></jsp:include> 
<br><br><br><br><br><br>
<form name="edit_candidate" action="UpdateCandidateServlet" method="post">
<ul class="form-style-1">

<li>

    </li>   

    <li><label>Party Name <span class="required">*</span></label>
    	<input type="text" name="party" value="${party}" class="field-divided" placeholder="Party Name" />
    	
    </li>
    <li><label>Name <span class="required">*</span></label>
    	<input type="text" name="fname" value="${fn}" class="field-divided" placeholder="First Name" />
    	
    </li>
    <li><label>Age <span class="required">*</span></label>
    	<input type="text" name="age" value="${age}" class="field-divided" placeholder="Age" />
    </li>
    
    <li><label>Contact <span class="required">*</span></label>
    	<input type="tel" name="con" value="${con}" class="field-divided" placeholder="Contact" maxlength="10"/>
    </li>
    
        <li><label>Address <span class="required">*</span></label>
    	<textarea name="add" rows="5" cols="10" value="${add}" class="field-divided" placeholder="Address"> </textarea>
    	
    </li>
  
	<li>
    	<input type="submit" value="Update" />
    	 <input type="reset" value="Clear" />
    </li>
<br>
     
</ul>
</center>
</form>
</body>
</html>
