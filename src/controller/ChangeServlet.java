/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System 
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;

import java.io.IOException;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpSession;
import dao.Dao;
import model.Model;
@WebServlet("/ChangeServlet")
public class ChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangeServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pass=request.getParameter("pass");		//oldpwd
		String pass1=request.getParameter("pass1");		//new pwd
		String pass2=request.getParameter("pass2");		//confirm pwd
		HttpSession session = request.getSession();
		String emailid = (String)session.getAttribute("email");
		String oldpass = (String)session.getAttribute("pass");		//old pwd in session/table
		String sql="update register set(password)=('"+pass1+"') where email='"+emailid+"'";
		String page="";
		
		System.out.println(pass + pass1 + pass2 + emailid + oldpass);
		if (pass.equals(oldpass))
		{
			if(!pass1.equals(oldpass))
			{
				if(!pass1.contains(oldpass))
				{
					if(pass1.equals(pass2))
					{
						Model m = new Model();
						m.setEmail(emailid);
						m.setPass(pass1); 
						try
						{
							int i =Dao.register(m, sql);
							if(i!=0)
							{
								page="login.jsp?msg=passwordchanged";
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
				}
				else
				{
					page="error.jsp?msg=newpassword";
				}
			}
			else
			{
				page="error.jsp?msg=passwordcontain";
			}
		}
		else
		{
			page="error.jsp?oldpassword";
		}
		response.sendRedirect(page);
	}
}
