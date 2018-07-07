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
<title>Admin Home</title>
</head>
<body>
<center>
<jsp:include page="header_admin.jsp"></jsp:include>

<br><br><br><br><br><br>
   <a href="add_Candidate.jsp"><button>    Candidate    </button></a>
    <br><br>
    	<a href="Add_nomi.jsp"><button>    Nominees     </button></a>
    	<br><br>
    			  <a href="add_camp.jsp"><button>    Campaigns    </button></a>
    			  <br><br>
    	<a href="Add_UpcommingEvent.jsp"><button> UpcommingEvents </button></a>
    	<br><br>
    	 	<a href="adminresult.jsp"><button>Voting Result </button></a>
    	<br><br>
    
<br>
     
</center>

</body>
</html>
 
