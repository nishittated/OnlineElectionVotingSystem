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
<title>Add Event</title>
</head>       
<body>   
<jsp:include page="header_admin.jsp"></jsp:include>

<br><br><br><br><br><br>
<center><a href="Add_UpcommingEvent.jsp"><button>Add</button></a>
    	<a href="Edit_UpcommingEvent.jsp"><button>Edit</button></a>
    	<a href="Delete_UpcommingEvent.jsp"><button>Delete</button></a>
    	<a href="viewevent.jsp"><button>View</button></a>
    	</center>
<form name="addEvent"  action="AddEvent" method="post">
<ul class="form-style-1">


    <li><label>Party Name <span class="required">*</span></label>
    	<input type="text" name="pname" class="field-divided" placeholder="Party Name" />
    	
    </li>
    
    <li><label>Event Name <span class="required">*</span></label>
    	<input type="text" name="ename" class="field-divided" placeholder="Event Name" />
    	
    </li>
    
    <li>
    	<input type="submit" value="Add" />
       <input type="reset" value="Clear" />
       
    </li>

</ul>
</form>
</body>
</html>
