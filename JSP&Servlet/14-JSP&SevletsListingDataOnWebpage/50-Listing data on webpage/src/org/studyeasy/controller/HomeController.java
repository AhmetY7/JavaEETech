package org.studyeasy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.xml.crypto.Data;

import org.studyeasy.entity.User;
import org.studyeasy.model.UsersModel;

@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/project")
	private DataSource dataSource;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page"); // Bu şekilde gidilmek istenen sayfayının ismini alıyoruz artık ne verdiğysek
		page = page.toLowerCase(); // Case olayından kurtulmak için

		switch (page) {
		case "home":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "listusers":
			List<User> listUsers = new ArrayList<>(); // kullanıcıları almak için list oluşturduk
			listUsers = new UsersModel().listUsers(dataSource); // Verilerimizi model sınıfımızdan alıyoruz. ve datasourcemizi burdan yolluyoruz modele
			request.setAttribute("listUsers", listUsers); // request nesnemize ekliyourz.
			request.getRequestDispatcher("listUser.jsp").forward(request, response); // sayfayı gidilmek istenen sayfaya yönlendiriyoruz. request ve response nesnesi ile
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

}
