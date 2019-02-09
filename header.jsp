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

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Election Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!---strat-slider---->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!---//-slider---->

</head>
<body>
<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<div class="logo">
					<a href="index-2.html"><img src="images/logo1.gif" alt=" " /></a>
				</div>
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<%
						if(session.getAttribute("email")!= null)
						{%>
							<li><a href="home.jsp">Home</a></li>
							<%
							if(session.getAttribute("s1")!=null)
							{%>
							<li><a href="#" OnClick="alert('You are allowed to vote only once and You have already voted!');">Give Vote</a></li>
							<%}
							else
							{%>
								<li><a href="usercandprofile.jsp" OnClick="alert('You are allowed to vote only once so choose your candidate carefully!!');">Give Vote</a></li>
							<%
							}
							%>
							<li><a href="result.jsp">Results</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
							<li><a href="update.jsp">Profile Update</a></li>
							<li><a href="changepassword.jsp">Change Password</a></li>
							<li><a href="logout.jsp">Logout</a></li>					
						<%} 
						else  	
						{
						%>
							<li><a href="home.jsp">Home</a></li>
							<li><a href="election.jsp">Election</a></li>
							<li><a href="result.jsp">Results</a></li>
							<li><a href="campaign.jsp">Campaigns</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
							<li><a href="login.jsp">Login</a></li>
							<li><a href="signin.jsp">Sign up</a></li>					
						<%} %>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="header_bottom">
	</div>
<!-- //end-header -->
</body>
</html>
