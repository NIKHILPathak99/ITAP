package com.itap.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.itap.DAO.DAO;

/**
 * Servlet implementation class AddPdf
 */
@WebServlet("/AddPdf")
@MultipartConfig(maxFileSize = 1024 * 1024 * 50)
public class AddPdf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPdf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Part filePart = request.getPart("resume"); // Get file from request
		String fileName = "Resume";
		InputStream fileContent = filePart.getInputStream(); 
		try {
			DAO db = new DAO();
			boolean b = db.addPdf(fileName, fileContent);
			db.close();
			if (b == true) {
				session.setAttribute("msg", "Successfully Applied");
			}
			else
				session.setAttribute("msg", "Applied failed");
			response.sendRedirect("index.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
