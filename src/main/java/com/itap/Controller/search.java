package com.itap.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itap.DAO.DAO;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String post = request.getParameter("post");
		String location = request.getParameter("location");
		String exp = request.getParameter("exp");
		
		try {
			DAO db = new DAO();
			ArrayList<HashMap<String, Object>> jobs = (ArrayList<HashMap<String, Object>>) db.search(post, location, exp);
			db.close();
			 HttpSession session = request.getSession();
             session.setAttribute("type",jobs);
             session.setAttribute("job","You Searched");
             response.sendRedirect("job.jsp");
		} catch (ClassNotFoundException | SQLException  e) {
			e.printStackTrace();
		}
		
	}

}
