// web sayfalarını jsp olarak oluşturduk ama controllerı servlet olarak oluşturduk.
package org.java.mvc;

import java.io.IOException;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //Urldeki değerleri almak için doGet metodunu kullanıyoruz.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("page"); // eğer urldeki parametreden value yi yakılıyoruz. ?page=login deki login bizim parametremiz oluyor
		if(param.equals("login")) { // param eşit ise logine yani ?page=login ise
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		} else if(param.equals("signUp")) { // param eşit ise singupa yani ?page=singup ise
			getServletContext().getRequestDispatcher("/signUp.jsp").forward(request, response);
		} else if(param.equals("about")) { // param eşit ise abouta yani ?page=about ise
			getServletContext().getRequestDispatcher("/about.jsp").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/notFound.jsp").forward(request, response);
		}
	}

}
