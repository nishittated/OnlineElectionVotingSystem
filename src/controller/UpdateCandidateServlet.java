/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE 
 */ 
package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import dao.Dao;
import model.Model;
public class UpdateCandidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private String;
       
    public UpdateCandidateServlet() {
        super();
    } 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String party = request.getParameter("party");
		String fn = request.getParameter("fname");
		String age = request.getParameter("age");
		String con = request.getParameter("con"); 
		String add = request.getParameter("add");
		String page="";
		 
		String sql="update candidate set (fn,age,contact,address)=('"+fn+"', '"+age+"', '"+con+"', '"+add+"') where pn='"+party+"'";	
		
	try{ 
		Model m = new Model();
		m.setParty(party);
		m.setFn(fn);
		m.setAge(age);
		m.setCon(con);
		m.setAdd(add);
		
		int i =Dao.common(m, sql, "update");
			if(i!=0){
				page="edit_Candidate.jsp?msg=success";
			}
			else{
				page="edit_Candidate.jsp?msg=failed";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}			
	response.sendRedirect(page);
	}
}
