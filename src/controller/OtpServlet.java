/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.PasswordMail;

@WebServlet("/OtpServlet")
public class OtpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OtpServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String otp = request.getParameter("otp");
		HttpSession session = request.getSession();
		String otp1 = (String)session.getAttribute("otp");
		String emailid = (String)session.getAttribute("email");
		String password = (String)session.getAttribute("pass");
		String page="";
		String link ="http://localhost:8080/OnlineElectionVotingSystem/resetpassword.jsp";
		
		if(otp.equals(otp1))
		{
			PasswordMail pm = new PasswordMail();  
			try
			{
				boolean status = pm.sendMail1(emailid,password,link);
				if(status)
				{
					page="error.jsp?msg=PasswordSendToMail"; 
				}
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			page="error.jsp?msg=otp";
		}
		response.sendRedirect(page);
	}
}
