package org.studyeasy.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberAreaController
 */
@WebServlet("/MemberAreaController")
public class MemberAreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberAreaController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action"); // memberAreadaki name'i action olan elementin valuesini getParameter ile alıyoruz.
		switch (action) {
		case "destroy":
			request.getSession().invalidate(); // Sadece bunu yaparak çıkış yapamıyoruz. Bunu yapınca eski session id gidiyor yenisi geliyor bu nedenle sonlandırmak istediğimiz sessionu buluyoruz. 
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie: cookies) {
				if(cookie.getName().equals("username")) {
					// Bu şekilde cookieden kurtuluyoruz.
					cookie.setValue(null); // ismi username olan cookienin ismini null yapıyoruz.
					cookie.setMaxAge(0); // Süresinin dolduğunu söylüyoruz
					response.addCookie(cookie); // Sonra response'a veriyoruz.
				}
			}
			
			response.sendRedirect("login.jsp");
			break;

		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
