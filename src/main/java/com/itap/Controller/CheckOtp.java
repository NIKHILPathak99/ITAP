package com.itap.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckOtp
 */
@WebServlet("/CheckOtp")
public class CheckOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOtp() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String otp1 = request.getParameter("otp1");
		String otp2 = request.getParameter("otp2");
		String otp3 = request.getParameter("otp3");
		String otp4 = request.getParameter("otp4");
		String otp5 = request.getParameter("otp5");
		String otp6 = request.getParameter("otp6");
		String otp = otp1+otp2+otp3+otp4+otp5+otp6;
		String myotp = (String) session.getAttribute("otp");
		if(myotp.equalsIgnoreCase(otp)) {
			response.sendRedirect("NewPassword.jsp");
		}
		else {
			session.setAttribute("msg", "Wrong Otp");
			response.sendRedirect("EnterOtp.jsp");
		}

	}

}
