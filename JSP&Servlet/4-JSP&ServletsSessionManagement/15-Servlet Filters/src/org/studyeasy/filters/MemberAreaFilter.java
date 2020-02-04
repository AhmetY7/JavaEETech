package org.studyeasy.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class MemberAreaFilter
 */

// Özel olarak filter sayfası oluşturduk. her sayfada user giriş yapmışmı yapmamışmı bunları kontrol etmek memberAreadaki gibi biraz zor ve kod kalabalığı bu nedenle filter sayfası oluşturduk 
@WebFilter("/MemberAreaController") // Member area controllerı ele alacağımız için önce bu kodu yazdık.
public class MemberAreaFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public MemberAreaFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// bu şekilde filtre ekledik. memberAreaController'a girildiğinde giriş yapılmış mı yapılmamış mı onu kontrol ediyor.
		HttpServletResponse response = (HttpServletResponse) res;
		HttpServletRequest request =  (HttpServletRequest) req;
		if(request.getSession().getAttribute("username")==null) {
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		}else {
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
