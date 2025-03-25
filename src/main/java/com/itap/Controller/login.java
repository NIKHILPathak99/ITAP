package com.itap.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itap.DAO.DAO;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		
		try {
			DAO db = new DAO();
			String name = db.login(userid, password);
			HttpSession session = request.getSession();
			if(name!=null) {
				session.setAttribute("name", name);
				response.sendRedirect("index.jsp");
			}
			else {
				session.setAttribute("msg", "Something is Wrong !! Please register if not have any id.");
				response.sendRedirect("Home.jsp");
			}
		} catch (SQLException|ClassNotFoundException e) {
			e.printStackTrace();
		} 
	}

}
