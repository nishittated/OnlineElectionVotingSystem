<!-- Copyright (c) Nishit Tated. All Rights Reserved.    
  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    	<%@page import="model.Model, dao.Dao, java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Election India</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<script async src='../../../../pagead2.googlesyndication.com/pagead/js/f.txt'></script>
<!-- ResponsiveW3layouts -->
<ins class='adsbygoogle'
     style='display:block'
     data-ad-client='ca-pub-9153409599391170'
     data-ad-slot='7722137086'
     data-ad-format='auto'></ins>

<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
  </div>
  </div>

<!-- banner -->
	<div class="banner">
		<div class="container">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="banner-info">
									<div class="dummy_text">
										<h1><b>Everyone is saying there will be a hung parliament this election 
										and the parties will have to make alliances with the smaller parties 
										to form a majority.</b></h1>
										</h1>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-info">
									<div class="dummy_text">
										<h1>
										<b>The expenses scandal is a political hot potato.</b>
										</h1>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-info">
									<div class="dummy_text">
										<h1><b>The political machinery has yet to understand the opportunity or threat
										of the internet and social websites.</b>
										</h1>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</section>
			</div>
			<!-- FlexSlider -->
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
										$(window).load(function(){
										  $('.flexslider').flexslider({
											animation: "slide",
											start: function(slider){
											  $('body').removeClass('loading');
											}
										  });
										});
									  </script>
			<!-- //FlexSlider -->
	</div> 
<!-- //banner -->
<!---728x90--->
<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="banner-bottom1-grids">
			<div class="col-md-4 banner-bottom1-left banner-bottom1-left1">
				<div class="banner-bottom1-lft">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					<h3><a href="campaign.jsp">Campaign</a></h3>
				</div>
			</div>
			<div class="col-md-4 banner-bottom1-left">
				<div class="banner-bottom1-lft">
					<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
					<h3>Accessibility</h3>
				</div>
			</div>
			<div class="col-md-4 banner-bottom1-left banner-bottom1-left2">
				<div class="banner-bottom1-lft">
					<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
					<h3>Calendar</h3>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner-bottom1 -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="wmuSlider example1">
				<div class="wmuSliderWrapper">
					<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="about-grids">
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/PM1.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Jawaharlal Nehru</a></h3>
												<span>Prime Minister</span>
												<p> He was Prime Minister from 1947 to 1964</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/PM2.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Lal Bahadur Shastri</a></h3>
												<span>Prime Minister</span>
												<p> He was Prime Minister from 1964 to 1966</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/PM3.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Indira Gandhi</a></h3>
												<span>Prime Minister</span>
												<p> She was Prime Minister from 1966 to 1977 & from 1980 to 1984</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</article>
					<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="about-grids">
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/PM4.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Narendra Modi</a></h3>
												<span>Prime Minister</span>
												<p> He is the Prime Minister from 2014 to till now</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/P5.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Rajendra Prasad</a></h3>
												<span>President</span>
												<p> He was President from 1950 to 1962</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/A8.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">APJ Abdul Kalam</a></h3>
												<span>President</span>
												<p> He was President from 2002 to 2007</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</article>
					<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="about-grids">
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/P7.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Pratibha Patil</a></h3>
												<span>President</span>
												<p> She was President from 2007 to 2012 </p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/P8.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Pranab Mukherjee</a></h3>
												<span>President</span>
												<p> He was President from 2012 to 2017</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="col-md-4 about-grid">
									<div class="about-grid1">
										<figure class="thumb">
											<img src="images/P9.jpg" alt=" " class="img-responsive" />
											<figcaption class="caption">
												<h3><a href="#">Ram Nath Kovind</a></h3>
												<span>President</span>
												<p> He is the President from 2017 to till now</p>
												<ul>
													<li><a href="#" class="f1"></a></li>
													<li><a href="#" class="f2"></a></li>
													<li><a href="#" class="f3"></a></li>
												</ul>
											</figcaption>
										</figure>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</article>
				</div>
			</div>
				<script src="js/jquery.wmuSlider.js"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
		</div>
	</div>
<!-- //banner-bottom -->
<!---728x90--->
<!-- body_grids -->
	<div class="wlcome">
		<div class="container">
			<div class="wlcome-grids">
				<div class="col-md-7 wlcome-grid-left">
					<div class="election_grid">
					
					<p> <%String sql="select sum(vote) from candidate ";
						ResultSet rs1 = Dao.validate1(sql);
						
						while(rs1.next())
						{
							String l = rs1.getString(1);				
							HttpSession session2 = request.getSession();
							session2.setAttribute("l",l);
						}
						String cvote = session.getAttribute("l").toString();
						%>
						<p><span style="font-size:30px; color:red;"><b>"Total number of People Voted:  <%= cvote %>"</b></span></p>
					</p>
						<h3>Welcome To Election !</h3>
						<p class="nihil">Vote For Real Government.</p>
						<div class="wlcome-grid-left-grid">
							<div class="col-xs-8 wlcome-grid-left-grid">
								<h4>Leader of BJP</h4>
								<p>Modi was appointed Chief Minister of Gujarat in 2001, due to Keshubhai Patel's failing health 
								and poor public image following the earthquake in Bhuj. Modi was elected to the legislative assembly 
								soon after. His administration has been considered complicit in the 2002 Gujarat riots, or otherwise 
								criticised for its handling of it, although a court found no evidence to prosecute Modi.His policies
								as chief minister, credited with encouraging economic growth, have received praise.
								His administration has been criticised for failing to significantly improve health, poverty, and education
								indices in the state.</p>
							</div>
							<div class="col-xs-4 wlcome-grid-left-grid">
								<img src="images/PM4.jpg" alt=" " class="img-responsive">
							</div>
							<div class="clearfix"> </div>
						</div>
<!---728x90--->
						<div class="wlcome-grid-left-grid">
							<div class="col-xs-8 wlcome-grid-left-grid">
								<h4>Leader of Congress</h4>
								<p>He serves as the Vice-President of the Indian National Congress party, the Chairperson of the Indian 
								Youth Congress and the National Students Union of India. He is the second-highest-ranked member of the 
								Congress Working Committee. He also serves as Trustee of Rajiv Gandhi Foundation and Rajiv Gandhi Charitable
								Trust. Gandhi formerly served as a general secretary in the All India Congress Committee.</p>
							</div>
							<div class="col-xs-4 wlcome-grid-left-grid fgh">
								<img src="images/image7.jpg" alt=" " class="img-responsive">
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="services">
						<h2>Services For Our Country !</h2>
						<p class="nihil">When a politician with good intentions disappear politics.</p>
						<div class="banner-bottom-video-grid-left">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
								  <h4 class="panel-title">
									<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Elementary Service Personnel (ESP)
									</a>
								  </h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body">
								ESP means an employee of the Commission with consolidated salary including the posts of Dry Sweeper, Security Guard (normal), Care Taker and Gardener or as may be revised from time to time. 
								</div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>General Service Personnel (GSP)
									</a>
								  </h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								   <div class="panel-body">
									GSP means an employee considered outside the regular service of the Commission, and includes the posts of Messenger and Wet Sweeper or as may be revised from time to time.
									</div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Major Occupational Group
									</a>
								  </h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								   <div class="panel-body">
									Major Occupational Group means a major division of the Occupational Structure which embraces a group of associated occupations such as the Audit & Finance Group, the Architecture and Engineering Group, etc.
									</div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFour">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Leave Travel Passage
									</a>
								  </h4>
								</div>
								<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
								   <div class="panel-body">
									Leave Travel Passage means the provision of travel fares to a member and the family including domestic help for visiting homes in Bhutan or any other 6 country/place.
									</div>
								</div>
							  </div>
							   <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFive">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Enforced Halt
									</a>
								  </h4>
								</div>
								<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
								   <div class="panel-body">
									Enforced Halt means a halt, which an employee of the Commission or his/her family, in the course of a journey, is obliged to make at an intermediate station for a reason beyond his/her control. 
								  </div>
								</div>
							  </div>
							   <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingSix">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Minimum Experience Requirement
									</a>
								  </h4>
								</div>
								<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
								   <div class="panel-body">
									Minimum Experience Requirement  means the specific number of years of experience required in one’s current position before becoming eligible to apply for notified vacancies or movement through broad-banded positions.
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingSeven">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Termination
									</a>
								  </h4>
								</div>
								<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
								   <div class="panel-body">
									Termination means separation from service of the Commission without any 9 post-service benefits but with entitlement of his/her own personal contribution such as Provident Fund (PF) & Group Insurance Scheme (GIS) with interest and cost of travel home.
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingEight">
								  <h4 class="panel-title">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Traveling Allowance
									</a>
								  </h4>
								</div>
								<div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
								   <div class="panel-body">
									Traveling Allowance means the allowance payable to an employee of the Commission to compensate for the cost of traveling during an in-country official tour. 
								  </div>
								</div>
							  </div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-5 wlcome-grid-right">
					<div class="sap_tabs">	
						<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
							  <ul class="resp-tabs-list">
								  <li class="resp-tab-item grid1 resp-tab-active" aria-controls="tab_item-0" role="tab"><span> Nominees</span></li>
								 
								  <div class="clear"></div>
							  </ul>				  	 
								<div class="resp-tabs-container">
									
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
										  <div class="tab_list">
												<img src="images/image4.png" alt=" " class="img-responsive">
										  </div>
										  <div class="tab_list1">
											<a href="#">BJP for India</a>
											
										  </div>
										  <div class="clearfix"> </div>
										</div>
										<div class="facts">
										   <div class="tab_list">
												<img src="images/image5.jpg" alt=" " class="img-responsive">
										  </div>
										  <div class="tab_list1">
											<a href="#">Indian National Congress</a>
											<!--<p>October 28,2015<span>Nam libero tempore, cum soluta nobis.</span></p>-->
										  </div>
										  <div class="clearfix"> </div>
										</div>
										<div class="facts">
										   <div class="tab_list">
												<img src="images/image6.jpg" alt=" " class="img-responsive">
										  </div>
										  <div class="tab_list1">
											<a href="#">Aam Aadmi Party</a>
											<!--<p>October 31,2015<span>Nam libero tempore, cum soluta nobis.</span></p>-->
										  </div>
										  <div class="clearfix"> </div>
										</div>
									</div>
								</div>
							 <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
								<script type="text/javascript">
									$(document).ready(function () {
										$('#horizontalTab').easyResponsiveTabs({
											type: 'default', //Types: default, vertical, accordion           
											width: 'auto', //auto or any width like 600px
											fit: true   // 100% fit in a container
										});
									});
								   </script>
						</div>
					</div>
					<div class="video">
						<h4>Election Video</h4>
						<iframe src="https://player.vimeo.com/video/61220793?color=ffffff&amp;title=0&amp;byline=0&amp;portrait=0" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
					</div>
					<div class="upcoming">
						<h4>Upcoming Events</h4>
						<ul>
								<%
								if(session.getAttribute("email")==null)
								{
										Model m = new Model();
										ResultSet rs = Dao.validate(m,"select * from event");
							%>
						<center>
						<table border="2" style="width:100%" bgcolor="green">
							<tr>
								<th>Party Name</th>
								<th>Event Name</th>
							</tr>
							<%
								while(rs.next())
								{
 								 %>
									<tr>
										<td><%=rs.getString(1)%></td>
										<td><%=rs.getString(2)%></td>
									</tr>
								<% }%>
						</table>
							<%} 
								else
								{
									response.sendRedirect("viewevent.jsp");
								}
							%>
							</center>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
