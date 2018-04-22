/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;
 
import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import mail.PasswordMail;
import model.Model;

@WebServlet("/ForgotServlet") 
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ForgotServlet() {
        super(); 
    }  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailid = request.getParameter("email");
		String page="";
		String sql ="select * from register where email='"+emailid+"' ";
		System.out.println(emailid);

		if(emailid.equals(""))
		{ 
			page="error.jsp?msg=abc";
		}
		else
		{
			Model m = new Model(); 
			m.setEmail(emailid); 
			try
			{
				ResultSet rs =Dao.validate(m,sql);
				if (rs.next())
				{
					String password= rs.getString(12);
					HttpSession session = request.getSession();
					session.setAttribute("email", emailid);
					session.setAttribute("pass", password);
					String data = "12345678901234567890123456789012345678901234567890";
					String otp="";
					char ch[]=data.toCharArray();
					
					for (int i=0; i<4; i++)
					{
						int j = (int)((Math.random()) * 50);
						otp=otp+ch[j];
					}
					session.setAttribute("otp",otp);
					PasswordMail pm = new PasswordMail(); 
					boolean status = pm.sendMail(emailid, otp);
					if(status)
					{ 
						page="otp.jsp?msg=send";
					}	 
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
