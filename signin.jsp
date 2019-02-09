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
<title>Register</title>
<link href="css/forms.css" rel="stylesheet" type='text/css' />
<script type="text/javascript" src="js/regvalid.js"></script>
<script type="text/javascript" src="js/country.js"></script>

</head>
<body onload="document.register.fname.focus()">
<jsp:include page="header.jsp"></jsp:include>


<pre>


</pre>

<form name="register" action="RegServlet" onsubmit="return regvalid()" method="post">

<ul class="form-style-1">


    <li><label>First Name <span class="required">*</span></label>
    	<input type="text" name="fname" class="field-divided" placeholder="Enter First Name" />
    	
    </li>
    
    <li><label>Middle Name <span class="required">*</span></label>
    	<input type="text" name="mname" class="field-divided" placeholder="Enter Middle Name" />
    </li>
    
    <li><label>Last Name <span class="required">*</span></label>
    	<input type="text" name="lname" class="field-divided" placeholder="Enter Last Name" />
    </li>

    <li>
	    <label>Gender <span class="required">*</span></label>
        <select name="gen" class="field-select">
        	<option value="Default">Select Option</option>
	        <option value="MAlE">Male</option>
	        <option value="FEMALE">Female</option>
	        <option value="OTHER">Other</option>
        </select>
	 </li>
     
       <li><label>Contact No. <span class="required">*</span></label>
    	<input type="text" name="con" class="field-divided" min="7000000000" max="9999999999" placeholder="Enter Contact no" maxlength="10" required="required"/>
    </li>
	
    <li>
        <label>Email <span class="required">*</span></label>
        <input type="email" name="email" placeholder="Enter emailid" class="field-long" />
    </li>
    
    <li> 
        <label>Address <span class="required">*</span></label>
        <textarea name="add" id="field5" placeholder="Enter address" class="field-long field-textarea"></textarea>
    </li>
    
	 <li><label>Country <span class="required">*</span></label>
	 	 <select name ="country" id="country" required="required"></select>
    </li>
    
    <li><label>State <span class="required">*</span></label>
    	 <select name="state" id="state" required="required"></select>
    </li>
     
   <li><label>Aadhar Card No.<span class="required">*</span></label>
    	<input type="text" name="aadhar" class="field-divided"  min="000000000000" max="99999999999" maxlength="12" placeholder="Enter aadhar card number" />
    </li>
   
   <li><label>Election Card No.<span class="required">*</span></label>
    	<input type="text" name="election" class="field-divided" placeholder="Enter election card number" maxlength="10"/>
    </li>
    
    <li><label>Password <span class="required">*</span></label>
		<input type="password" name="pass" class="field-divided" placeholder="Enter password">
	</li>
	
	<li><label>Confirm-password <span class="required">*</span></label>
		<input type="password" name="pass1" class="field-divided" placeholder="Type password again">
	</li>
	
	 <li><label>Date of Birth <span class="required">*</span></label>
    	<input type="date" name="dob" class="field-divided" />
    </li>
    
    <li><label>Captcha <span class="required">*</span></label>
		<img src="http://localhost:8080/OnlineElectionVotingSystem/CaptchaServlet"> 
		<a href="signin.jsp">New Captcha</a>
	</li>

	<li><label>Enter Captcha <span class="required">*</span></label>
		<input type="text" name="code" placeholder="Enter Captcha code" required="required">
	</li>

    <li>
       <input type="submit" value="Register" />
       <input type="reset" value="Clear" />
    </li>
</ul>
</center>

<script type="text/javascript">
populateCountries("country","state");
</script>

</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
