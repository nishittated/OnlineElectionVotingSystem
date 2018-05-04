/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;

import java.io.IOException;
import model.Model;
import dao.Dao;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String election = request.getParameter("election");
		String pass=request.getParameter("pass");
		String page="";
		String sql ="select * from register where email='"+email+"' and election='"+election+"' and password='"+pass+"'";
		String sql1 = "select * from register where email='"+email+"'";
		
		if(email.equals("")||election.equals("") ||pass.equals("")) 
		 
			page="error.jsp?msg=abc";  //URL Rewriting 
		}
		else
		{
			Model m = new Model ();
			m.setEmail(email);
			m.setElection(election);
			m.setPass(pass);
			Dao d = new Dao(); 
			try
			{
				
				ResultSet rs=d.validate(m,sql);
				
				 ResultSet rs1 = d.validate1(sql1);
					//set status in session
					if(rs1.next())
					{
						
						String s = rs1.getString(15);
						System.out.println("Status = "+s);
						
						if(s.equalsIgnoreCase("activate"))
						{
						HttpSession session1 = request.getSession();
						session1.setAttribute("s1",s);				
						}
						
						
					}
				if(rs.next())
				{
					//page="profile.jsp?msg=success";					
					String fn = rs.getString(1);
					HttpSession session = request.getSession();
					session.setAttribute("email",email);
					session.setAttribute("pass", pass);
					session.setAttribute("fname",fn);
					session.setMaxInactiveInterval(1800);
					page="profile.jsp?msg=success";
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
		response.sendRedirect(page);
	}
}
