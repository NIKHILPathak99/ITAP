package com.itap.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itap.DAO.DAO;
import com.itap.mailmodal.SendOtp;



/**
 * Servlet implementation class CheckId
 */
@WebServlet("/CheckId")
public class CheckId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("email");
		HttpSession session = request.getSession();
		
		try {
			DAO db = new DAO();
			boolean b= db.UserCheck(userid);
			if(b==true) {
				session.setAttribute("userid", userid);
				SendOtp otp = new SendOtp();
				String myotp = otp.sendOtp(userid);
				session.setAttribute("otp", myotp);
				session.setAttribute("id", userid);
				response.sendRedirect("EnterOtp.jsp");
			}
			else {
				session.setAttribute("msg", "User Not Exist!!");
				response.sendRedirect("Home.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Error.jsp");
		}

	}


}
