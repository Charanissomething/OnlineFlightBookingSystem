package com.src.ctrl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.dao.DaoService;
import com.src.model.UsersFlight;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("password");
		int userid = Integer.parseInt(request.getParameter("userid"));
		DaoService ds = new DaoService();
		UsersFlight u = new UsersFlight(userid,username,emailid,password);
		Statement st = ds.getMyStatement();
		int i = 0;
		String query = "insert into users_flight values("+u.getUserid()+",'"+u.getUsername()+"','"+u.getEmailid()+"','"+u.getPassword()+"')";
		try {
			st.executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(i > 0) {
			response.sendRedirect("login.jsp");
		}
		else {
			response.sendRedirect("./RegisterServlet");		
		}
		ds.closeMyStatement();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
