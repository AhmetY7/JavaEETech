package org.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// eğer formdan verileri get ile alırsak bu method kullanılır.
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().println(request.getParameter("name") + "<br/>"); // textbox
		response.getWriter().println(request.getParameter("gender") + "<br/>"); // radiobutton

		PrintWriter out = response.getWriter(); // response.getWriter()'ın ismini kısalttık sadece out olarak.
		String[] countries = request.getParameterValues("language");// checkbox
		if (countries != null) {
			for (int i = 0; i < countries.length; i++) {

				out.print(countries[i]);
				out.print("<br/>");
			}
		} else {
			out.print("None Selected");
		}

		response.getWriter().println(request.getParameter("country") + "<br/>"); // selectbox

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// eğer formdan verileri post ile alırsak bu method kullanılır.
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().println(request.getParameter("name"));
	}

}
