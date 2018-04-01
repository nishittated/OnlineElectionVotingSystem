/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */
function regvalid()  
{  
	var uname= document.register.fname;
	var mname= document.register.mname;
	var lame= document.register.lname;
	var gen=document.register.gen; 
	var uemail= document.register.email;
	var uadd= document.register.add;
	var aadhar =document.register.aadhar; 
	var election= document.register.election;
	var passid= document.register.pass;
	var cpass= document.register.pass1;
	  
	if(first_name(uname))  
	{  
		if(middle_name(mname))
		{
			if(last_name(lame))  
			{  
				if(gender(gen))
				{  
					if(email(uemail))
					{
						if(address(uadd))
						{		
							if(aadharc(aadhar,12))
							{
								if(electionc(election))
								{
									if(pwd(passid,8,20))   
									{   
										if(confirm_pwd(cpass,pass, 8, 20))	
										{
											return true;	
										}
									}   	  
								}
							}
						}
					}
				}
			}
		}
	}
	return false;  
}
function first_name(uname)  
{   
	var letters = /^[A-Za-z]+$/;  
	if(uname.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('First name must have alphabet characters only');  
		uname.focus();  
		return false;  
	}  
}
function middle_name(mname)  
{   
	var letters = /^[A-Za-z]+$/;  
	if(mname.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('Middle name must have alphabet characters only');  
		mname.focus();  
		return false;  
	}  
}
function last_name(lame)
{
	var letters = /^[A-Za-z]+$/;  
	if(lame.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('Last name/Surname must have alphabet characters only');  
		lame.focus();  
		return false;  
	}  
}
function gender(gen)
{
	if (gen.value === "Default")
	{
		alert("Please select gender from list");
		gen.focus();
		return false;
	}
	else
	{
		return true;
	}
}
function email(uemail)  
{  
	//w=[A-Za-z0-9]
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	if(uemail.value.match(mailformat))  
	{  
		return true;  
	}  
	else  
	{  
		alert("You have entered an invalid email address!");  
		uemail.focus();  
		return false;  
	}  
}
function address(uadd)  
{   
	var letters =/^[A-Za-z0-9_\.\-\&\ \/]+$/;
	if(uadd.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('User address must have alphanumeric characters only');  
		uadd.focus();  
		return false;  
	}  
}  
function aadharc(aadhar,m)  
{   
	var letters =/^[0-9]+$/;
	var aadhar_len = aadhar.value.length;  
	if(aadhar.value.match(letters))  
	{  
		if(aadhar_len==12)
			{
		return true;
			}
	}  
	else
	{  
		alert("Aadhar Number must be in a proper format / length should be "+m+ " digits");  
		aadhar.focus();  
		return false;  
	}  
}
function electionc(election)  
{   
	var letters =/^[A-Za-z0-9]+$/;
	if(election.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('Election Card No. must have alphanumeric characters only');  
		election.focus();  
		return false;  
	}  
}
function pwd(passid,mx,my)  
{   
	var passid_len = passid.value.length;  
	if (passid_len === 0 ||passid_len >= my || passid_len < mx)  
	{  
		alert("Password should not be empty / length be between "+mx+" to "+my);  
		passid.focus();  
		return false;  
	}  
	else
	{
		return true;  
	}
	
}
function confirm_pwd(cpass,pass, my, mx)
{
	var cp = cpass.value.length;
	
	if ( cp > my && cp <= mx) 
	{
		return true;
	} else {
		alert("Must be between " + my + " to " + mx);
		cpass.focus();
		return false;
	}
}
