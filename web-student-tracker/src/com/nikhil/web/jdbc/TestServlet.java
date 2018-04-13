package com.nikhil.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.activation.DataSource;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//@Resource(name="jdbc/web_student_tracker")
	//private DataSource dataSource;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out= response.getWriter();
		response.setContentType("text/plain");
		//Connection myConn =null;
		//Statement myStmt =null;
		//ResultSet myRs =null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");

	        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/web_student_tracker","root",""); 
	        Statement stmt=(Statement) con.createStatement();
			//myConn = (Connection) ((Statement) dataSource).getConnection();
			String q = "select * from student";
			ResultSet rs=(ResultSet) stmt.executeQuery(q);
			stmt = (Statement) con.createStatement();
			rs= (ResultSet) stmt.executeQuery(q);
			while(rs.next()){
				String email = rs.getString("email");
				out.println(email);
			}	
		}
		catch(Exception e){
			e.printStackTrace();
		}
		}
		
	}


