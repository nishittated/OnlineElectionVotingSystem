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
<title>Add Campaign</title>
</head>
<body>
<jsp:include page="header_admin.jsp"></jsp:include>

<br><br><br><br><br><br>
<center><a href="add_camp.jsp"><button>Add</button></a>
    	<a href="edit_camp.jsp"><button>Edit</button></a>
    	<a href="delete_camp.jsp"><button>Delete</button></a>
    	<a href="viewcamp.jsp"><button>View</button></a>
    	</center>
 <form name="add_camp" action="AddCampaign" method="post">
<ul class="form-style-1">
    <li><label>Party Name <span class="required">*</span></label>
    	<input type="text" name="pname" class="field-divided" placeholder="Party Name" />
    	
    </li>
    <li><label>Speaker Name <span class="required">*</span></label>
    	<input type="text" name="sname" class="field-divided" placeholder="speaker Name" />
    	
    </li>
    
    <li><label>Subject <span class="required">*</span></label>
    	<input type="text" name="sub" class="field-divided" placeholder="Subject" />
    	
    </li>
    
    <li><label>City <span class="required">*</span></label>
   		 <input type="text" name="city" class="field-divided" placeholder="City" />
    </li>
 
  <li><label>Country<span class="required">*</span></label>
    	<select name ="country" id="country" ></select>
    </li>
    
    <li><label>State<span class="required">*</span></label>
    	 <select name="state" id="state" ></select>
    </li> 
    <li>
    <input type="submit" value="Add" />
    <input type="reset" value="Clear" />
       
    </li>
<br>
     
</ul>
</center>

<script type="text/javascript">
populateCountries("country","state");
</script>
</form>
</body>
</html>
