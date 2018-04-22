/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;


public class AddNominee extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddNominee() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String party = request.getParameter("pname");
		String page="";
		String sql="insert into nominee values('"+party+"')";
		
		if(party.equals(""))
		{
			page="Add_nomi.jsp?msg=failure";
		}
		else
		{
			try
			{
				Model m = new Model();
				m.setParty(party);
				
				int i = Dao.register(m, sql);
				if (i!=0)
				{
					page="Add_nomi.jsp?msg=success";
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			response.sendRedirect(page);
		}
	}
}
