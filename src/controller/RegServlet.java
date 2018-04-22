/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;

import java.io.IOException;
import java.util.Date; 
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import mail.PasswordMail;
import model.Model;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RegServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fn=request.getParameter("fname");
		String mn=request.getParameter("mname");
		String ln=request.getParameter("lname");
		String gend=request.getParameter("gen");
		String cont=request.getParameter("con");
		String email=request.getParameter("email");
		String add=request.getParameter("add");
		String country=request.getParameter("country");
		String state=request.getParameter("state");
		String aadhar= request.getParameter("aadhar");
		String election= request.getParameter("election");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("pass1");
		//dob validation age>18 thn nly can register
		String dob=request.getParameter("dob");		//here user's value will cum from form field
			/// in dob validation we nly focus on YEAR(yyyy) part validation.....ignore month & day
		System.out.println(dob);
		String s = dob.substring(0,4);    //0-> starting index & 4-> character counting (yyyy format in dob so 4 character thts y 4)
		Date d = new Date();
		String s1=d.toString();    // converting object into string -> toString method is used
		String s2=s1.substring(24);
		int a =Integer.parseInt(s);	//user entered
		int b=Integer.parseInt(s2);	//system value
		String code = request.getParameter("code"); 
		//HttpSession session = request.getSession();
		String page="";
		
		if(pass.equals(cpass))
		{
			HttpSession session = request.getSession();
		
			String captcha =(String)session.getAttribute("captcha");
		
		if(a>1950 && (b-a) >=18)
		{
			if(captcha.equals(code))
			{	
				String data="1234567890123456789012345678901234567890";
				String otp="";
				char ch[]= data.toCharArray();
				
				for (int k=0; k<4; k++)
				{
					int j = (int)((Math.random())*40);
					otp=otp+ch[j];
				}
				String username=fn +"_"+otp;
				System.out.println("USERNAME GENEREATED");

				Model m = new Model();
				m.setFn(fn);
				m.setMn(mn);
				m.setLn(ln);
				m.setGend(gend);
				m.setCon(cont);
				m.setEmail(email);
				m.setAdd(add);
				m.setCountry(country);
				m.setState(state);
				m.setAadhar(aadhar);
				m.setElection(election);
				m.setPass(pass);
				m.setDob(dob);
				String sql = "insert into register(FIRST_NAME,MIDDLE_NAME,LAST_NAME, GENDER,CONTACT,EMAIL,ADDRESS, COUNTRY,STATE,AADHAR, ELECTION, PASSWORD,DOB,USERNAME) values('"+fn+"', '"+mn+"', '"+ln+"','"+gend+"','"+cont+"','"+email+"','"+add+"','"+country+"','"+state+"','"+aadhar+"', '"+election+"','"+pass+"', '"+dob+"', '"+username+"')";
				
				try
				{
						int i = Dao.register(m,sql);
						if (i!=0)
						{
							page="login.jsp?msg=success";
						}
						else
						{
							page="error.jsp?msg=failed";
						}
				}
				catch(Exception e) 
				{
					e.printStackTrace(); 
				}
			}
			else
			{
				page="error.jsp?msg=captcha";
			 }
		} 
		else 
		{
			page="error.jsp?msg=date";
		}
		}
		else
		{
			page="error.jsp?msg=password";
		}
		response.sendRedirect(page);
	}// end of doPost
}	// end of Servlet
