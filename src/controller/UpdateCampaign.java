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

public class UpdateCampaign extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateCampaign() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String party = request.getParameter("party");
		String sn = request.getParameter("sname");
		String sub = request.getParameter("sub");
		String c = request.getParameter("city"); 
		String count = request.getParameter("country");
		String state = request.getParameter("state");
		String page="";
		 
		String sql="update campaign set (sn,subject,city,country,state)=('"+sn+"', '"+sub+"', '"+c+"', '"+count+"', '"+state+"') where pn='"+party+"'";	
		
	try{ 
		Model m = new Model();
		m.setParty(party);
		m.setSpeaker(sn);
		m.setSubject(sub);
		m.setCity(c);
		m.setCountry(count);
		m.setState(state);
				
		int i =Dao.common(m, sql, "update");
			if(i!=0){
				page="edit_camp.jsp?msg=success";
			}
			else{
				page="edit_camp.jsp?msg=failed";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}			
	response.sendRedirect(page);
	}

}
