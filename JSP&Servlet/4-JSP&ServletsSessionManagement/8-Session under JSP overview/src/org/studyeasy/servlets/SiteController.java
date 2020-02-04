package org.studyeasy.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SiteController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// login jsp deki textbox değerlerini aldık.
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("Ahmet") && password.equals("1234")) {
			//Invalidating session if any
			request.getSession().invalidate(); // Önce herhangi bir session varsa onları geçersiz kılıyoruz.
			HttpSession newSession = request.getSession(true); // sonra yeni session oluşturuyoruz.
		    newSession.setMaxInactiveInterval(300); // 300 saniye boyunca bu session var olsun dedik.
		    response.sendRedirect("memberArea.jsp"); // sonra göndermek istediğimiz sayfaya yönlendirdik
			
		}else {
			response.sendRedirect("login.jsp");
		}

	}

}




