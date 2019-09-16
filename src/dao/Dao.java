/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package dao;
 
import java.sql.*;
import model.Model;

public class Dao {
	static Connection con = null; 
	static    
	{
		try 
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
				//database_name --> OEVS
		    con = DriverManager.getConnection("jdbc:db2://localhost:50000/database_name", "laptop_username", "lappipassword");
		}		
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	public static int register(Model m, String sql) throws SQLException {
		PreparedStatement ps = con.prepareStatement(sql);
		int i = ps.executeUpdate();
		return i;
	}
	public static ResultSet validate(Model m, String sql) throws SQLException {	
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		return rs;
	} 
	
	public static int register1(String sql) throws SQLException {
		PreparedStatement ps = con.prepareStatement(sql);
		int i = ps.executeUpdate();
		return i;
	}
	public static ResultSet validate1(String sql) throws SQLException {	
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		return rs;
	}
	public static int common(Model m, String sql,String update) throws SQLException {
		PreparedStatement ps = con.prepareStatement(sql);
		int i =ps.executeUpdate();	
		return i;
	} 
}
