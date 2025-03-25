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
 * Servlet implementation class GetJobByName
 */
@WebServlet("/GetJobByName")
public class GetJobByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetJobByName() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("name");
			System.out.println(name);
			DAO db = new DAO();
			 HashMap<String, Object> job = (HashMap<String, Object>)db.getJobByName(name);
             db.close();
             System.out.println(job.toString());
             HttpSession session = request.getSession();
             session.setAttribute("getjob",job);
             response.sendRedirect("ApplyJob.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
