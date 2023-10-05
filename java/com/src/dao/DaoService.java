package com.src.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DaoService {
	private Connection con=null;
	private Statement st=null;
	
	public Statement getMyStatement()
	{
		try {
//			String Driver_class  = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
//			String url = "jdbc:sqlserver://localhost:1433;databaseName=charandb;integratedSecurity=true ;encrypt=true;trustServerCertificate=true;";
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=charandb;integratedSecurity=true ;encrypt=true;trustServerCertificate=true;");
			st=con.createStatement();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return st;		
	}
	
	public void closeMyStatement()
	{
		try {
			st.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}