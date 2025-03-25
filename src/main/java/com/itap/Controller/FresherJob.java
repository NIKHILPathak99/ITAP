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
 * Servlet implementation class FresherJob
 */
@WebServlet("/FresherJob")
public class FresherJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FresherJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type = request.getParameter("type");
		try {
			DAO db = new DAO();
			 ArrayList<HashMap<String, Object>> FresherJob = (ArrayList<HashMap<String, Object>>)db.fresherJobs(type);
             db.close();
             HttpSession session = request.getSession();
             session.setAttribute("type",FresherJob);
             session.setAttribute("job",type);
             response.sendRedirect("job.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		

	}


}
