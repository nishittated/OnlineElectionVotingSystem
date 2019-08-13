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

<link href="css/forms.css" rel='stylesheet' type='text/css'/> 
<title>Add Candidate</title>
</head>
<body>

<jsp:include page="header_admin.jsp"></jsp:include>
<br><br><br><br><br><br>
<center><a href="add_Candidate.jsp"><button>Add</button></a>
    	<a href="edit_Candidate.jsp"><button>Edit</button></a>
    	<a href="delete_Candidate.jsp"><button>Delete</button></a>
    	<a href="viewcandidate.jsp"><button>View</button></a>
</center>
<form name="add_candidate" action="AddCandidateServlet" method="post">
<ul class="form-style-1">

<li>
    	
    </li>   

    <li><label>Party Name <span class="required">*</span></label>
    	<input type="text" name="party" class="field-divided" placeholder="Party Name" />
    	 
    </li>
    <li><label>Name <span class="required">*</span></label>
    	<input type="text" name="fname" class="field-divided" placeholder="Name" />
    	
    </li>
    <li><label>Age <span class="required">*</span></label>
    	<input type="text" name="age" class="field-divided" placeholder="Age" />
     	
    </li>
    
    <li><label>Contact <span class="required">*</span></label>
    	<input type="text" name="con" class="field-divided" placeholder="Contact" />
    </li>
    
    <li><label>Address <span class="required">*</span></label>
    	<textarea name="add" rows="5" cols="10" class="field-divided" placeholder="Address"> </textarea>
    	
    </li>
   
     <li>
	    <label>Gender<span class="required">*</span></label>
        <select name="gen" class="field-select">
        <option value="option">Select Option</option>
        <option value="MALE">MALE</option>
        <option value="FEMALE">FEMALE</option>
        <option value="OTHER">OTHER</option>
        </select>
	 </li>

    <li>
    <input type="submit" value="Add" />
    <input type="reset" value="Clear" />
       
    </li>
<br>
     
</ul>

</form>
</body>
</html>
