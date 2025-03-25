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
 * Servlet implementation class addjob
 */
@WebServlet("/addjob")
public class addjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addjob() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String post = request.getParameter("post");
		String cname = request.getParameter("cname");
		String location = request.getParameter("location");
		String minsal = request.getParameter("minsal");
		String maxsal = request.getParameter("maxsal");
		String exp = request.getParameter("exp");
		String type = request.getParameter("type");
		String desc = request.getParameter("desc");
		
		try {
			DAO db = new DAO();
			String msg = db.addJob(post, cname, location, minsal, maxsal, exp, type, desc);
			HttpSession session = request.getSession();
			if(msg.equalsIgnoreCase("success")) {
				session.setAttribute("msg", "job Add SuccessFully!!");
				response.sendRedirect("JobPost.jsp");
			}
			else {
				session.setAttribute("msg", "job Not Add!!");
				response.sendRedirect("JobPost.jsp");
			}
		} catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}

}
