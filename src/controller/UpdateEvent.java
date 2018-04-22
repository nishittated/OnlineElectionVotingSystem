/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller;

import java.io.IOException;
import model.Model;
import dao.Dao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UpdateEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateEvent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String party = request.getParameter("party");
		String en = request.getParameter("ename");
		String page="";
		 
		String sql="update event set(en) =('"+en+"') where pn='"+party+"'"; 	
		
	try{ 
		Model m = new Model();
		m.setParty(party);
		m.setEvent(en);

		int i =Dao.common(m, sql, "update");
			if(i!=0){
				page="Edit_UpcommingEvent.jsp?msg=success";
			}
			else{
				page="Edit_UpcommingEvent.jsp?msg=failed";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}			
	response.sendRedirect(page);
	}
}
