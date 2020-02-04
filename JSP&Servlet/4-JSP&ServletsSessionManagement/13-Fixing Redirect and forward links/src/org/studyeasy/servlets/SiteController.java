package org.studyeasy.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
		String action = request.getParameter("action");
		switch (action) {
		
		case "login":
			request.getRequestDispatcher("login.jsp").forward(request, response);
			break;

		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// Buradaki amaç url linklerinde asıl linkleri vermek değil kendi belirlediğimiz şekilde yönlendiriyoruz yani action değerlerine göre
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action"); // login.jsp de action nameinde olan elementin valuesini aldık
		switch (action) {
		case "loginSubmit":
			authenticate(request, response); // login submitten geldiysen başka metoda gittik ve parametre değerlerini de verdik.
			break;

		default:
			break;
		}

	}
	public void authenticate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("Ahmet") && password.equals("1234")) {
			//Invalidating session if any
			request.getSession().invalidate();
			HttpSession newSession = request.getSession(true);
		    newSession.setMaxInactiveInterval(300);
		    newSession.setAttribute("username", username);
		    response.sendRedirect(request.getContextPath()+"/MemberAreaController?action=memberArea"); // eğer doğru giriş yaptıysak memberAreaya yolluyoruz.
			
		}else {
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		}
	}

}




