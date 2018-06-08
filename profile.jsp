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
<meta http-equiv="refresh" content="<%=session.getMaxInactiveInterval()%>;URL=./logout.jsp">
<title>Dash board</title>

<script type="text/javascript" language="javascript">
	javascript:window.history.forward(1);
</script>
<%
response.setHeader("Pragma","no-cache" );
response.setHeader("Cache-control","no-store" );
response.setHeader("Expires","0" );
response.setHeader("Expires","1" ); 
%>	
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<script src='../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-30027142-1', 'w3layouts.com');
  ga('send', 'pageview');
</script>
<script async type='text/javascript' src='../../../../cdn.fancybar.net/ac/fancybar6a2f.js?zoneid=1502&amp;serve=C6ADVKE&amp;placement=w3layouts' id='_fancybar_js'></script>
<style type='text/css'>  .adsense_fixed{position:fixed;bottom:-8px;width:100%;z-index:999999999999;}.adsense_content{width:720px;margin:0 auto;position:relative;background:#fff;}.adsense_btn_close,.adsense_btn_info{font-size:12px;color:#fff;height:20px;width:20px;vertical-align:middle;text-align:center;background:#000;top:4px;left:4px;position:absolute;z-index:99999999;font-family:Georgia;cursor:pointer;line-height:18px}.adsense_btn_info{left:26px;font-family:Georgia;font-style:italic}.adsense_info_content{display:none;width:260px;height:340px;position:absolute;top:-360px;background:rgba(255,255,255,.9);font-size:14px;padding:20px;font-family:Arial;border-radius:4px;-webkit-box-shadow:0 1px 26px -2px rgba(0,0,0,.3);-moz-box-shadow:0 1px 26px -2px rgba(0,0,0,.3);box-shadow:0 1px 26px -2px rgba(0,0,0,.3)}.adsense_info_content:after{content:'';position:absolute;left:25px;top:100%;width:0;height:0;border-left:10px solid transparent;border-right:10px solid transparent;border-top:10px solid #fff;clear:both}.adsense_info_content #adsense_h3{color:#000;margin:0;font-size:18px!important;font-family:'Arial'!important;margin-bottom:20px!important;}.adsense_info_content .adsense_p{color:#888;font-size:13px!important;line-height:20px;font-family:'Arial'!important;margin-bottom:20px!important;}.adsense_fh5co-team{color:#000;font-style:italic;}</style>
<script>

    $(function() {
      $('.adsense_btn_close').click(function() {
        $(this).closest('.adsense_fixed').css('display', 'none');
      });

      $('.adsense_btn_info').click(function() {
        if ($('.adsense_info_content').is(':visible')) {
          $('.adsense_info_content').css('display', 'none');
        } else {
          $('.adsense_info_content').css('display', 'block');
        }
      });

    });

  </script>

<br><br><br>
<b>Welcome ${fname}</b>
<!-- banner -->
	<div class="banner">
		<div class="container">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								</div>
							</li>
							<li>
								<div class="banner-info">
									<div class="dummy_text">
								
									</div>
								</div>
							</li>
							<li>
								<div class="banner-info">
									<div class="dummy_text">
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
			</div>
			<div class="clearfix"> </div>
		</div>
<!-- //banner-bottom1 -->

<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="wmuSlider example1">
				<div class="wmuSliderWrapper">
						</div>
					<div class="video">
						<h4>Election Video</h4>
						<iframe src="https://player.vimeo.com/video/61220793?color=ffffff&amp;title=0&amp;byline=0&amp;portrait=0" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
					</div>
					<div class="upcoming">
						<h4>Upcoming Events</h4>
						<ul>
							<li><a href="#">Election of President of 2017.</a><!--<span>December 15, 2015</span>--></li>
							<li><a href="#">Election of Vise President of 2017.</a><!--<span>December 20, 2015</span></li>
							<li><a href="#">rutrum sed sem quis venenatis.</a><span>December 25, 2015</span></li>
							<li><a href="#">eros eget tellus tristique bibendum.</a><span>December 28, 2015</span></li>
							<li><a href="#">excepturi sint occaecati.</a><span>January 3, 2016</span></li>-->
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //body_grids -->

<!-- footer-top -->
	<div class="footer-top">
		<div class="container">
			<div class="footer-grids">
				<figure class="effect-winston">
				<!--	<img src="images/images.jpg" alt="" class="img-responsive one" />-->
					<figcaption> 
						<h2><b>Mahatma<span> Gandhi</span></b></h2>
						<p>Be the change that you wish to see in the world.</p>
						
					</figcaption>			
				</figure>
				<figure class="effect-winston">
				<!--	<img src="images/images.jpg" alt="" class="img-responsive one" />-->
					<figcaption>
						<h2><b>Jawaharlal <span> Nehru</span></b></h2>
						<p>Time is not measured by the passing of years.But by what one does,what one feels and what one achieves</p>
						
					</figcaption>			
				</figure>
				<figure class="effect-winston">
				<!--	<img src="images/5.jpg" alt="" class="img-responsive one" />-->
					<figcaption>
						<h2><b>Subhas<span> Chandra Bose</span></b></h2>
						<p>Nationalism is inspired by the highest ideals of the human race, Satyam(the Truth),Shivam(the God),Sundaram(the beautiful).</p>
						
					</figcaption>			
				</figure>
			</div>
		</div>
	</div>
<!-- //footer-top -->

<%if (session.getAttribute("email") != null)
	{%>


 
<script type="text/javascript">
//scriptlet tag - in this we can write complete java code 
<%
try
{
	String ms = request.getParameter("msg");
	if (ms.equals("success"))
	{%>
		alert("Login Successful");
	<%}
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</script>
<% }%>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
