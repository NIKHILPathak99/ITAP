package com.itap.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itap.DAO.DAO;


/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String password = request.getParameter("password");
		String id = (String) session.getAttribute("id");
		try {
			DAO db = new DAO();
			String s = db.ChangePassword(id, password);
			if (s.equalsIgnoreCase("success")) {
				session.setAttribute("msg", "Password Changed!!");
				response.sendRedirect("Home.jsp");
			}
			else {
				session.setAttribute("msg", "Something Went Wrong!!");
				response.sendRedirect("Home.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Error.jsp");
		}
		session.setAttribute("userid", null);
		session.setAttribute("otp", null);
		
	}

}
