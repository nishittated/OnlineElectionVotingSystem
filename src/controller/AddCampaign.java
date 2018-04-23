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
import java.sql.*;
import dao.Dao;
import model.Model;

public class AddCampaign extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddCampaign() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	} 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String party= request.getParameter("pname");
		String sn= request.getParameter("sname");
		String sub= request.getParameter("sub");
		String city= request.getParameter("city");
		String count= request.getParameter("country");
		String state= request.getParameter("state");	
		String page="";
		String sql="insert into campaign values('"+party+"','"+sn+"','"+sub+"','"+city+"','"+count+"','"+state+"')";
		
		if(party.equals("")||sn.equals("")||sub.equals("")||city.equals("")||count.equals("")||state.equals(""))
		{
			page="add_camp.jsp?msg=failure";
		}
		else
		{
			try
			{
				Model m = new Model();
				m.setParty(party);
				m.setSpeaker(sn);
				m.setSubject(sub);
				m.setCity(city);
				m.setCountry(count);
				m.setState(state);
				
				int i =Dao.register(m,sql);
				if(i!=0)
				{
					page="add_camp.jsp?msg=success";
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
