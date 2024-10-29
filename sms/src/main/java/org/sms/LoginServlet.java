package org.sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/login",loadOnStartup=0)
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sms", "root", "hari123");
            ps=con.prepareStatement("select * from student where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            rs=ps.executeQuery();
            if(rs.next()) {
            	PrintWriter pw=resp.getWriter();
            	pw.write("<html><body><h2>Login Successfull..</h2></body></html>");
            	RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
            	rd.forward(req, resp);
            	
            }
			
		} catch (ClassNotFoundException | SQLException e) {
			
			PrintWriter pw=resp.getWriter();
        	pw.write("<html><body><h2>Login Failed..</h2></body></html>");
        	e.printStackTrace();
		}
		
		finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(ps!=null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
}
