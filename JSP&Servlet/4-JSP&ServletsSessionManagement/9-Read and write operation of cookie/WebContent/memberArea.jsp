<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Area</title>
</head>
<body>
	<%
		String username = null, sessionID = null; // Değişkenleri initialize etmemiz lazım. yoksa hata veriyor.
		Cookie[] cookies = request.getCookies(); // cookieleri bu şekilde alıyourz. 
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) { // siteContrellerda verdiğimiz cooki ismi ile karşılaştırıyoruz
					username = cookie.getValue(); // getValue ile içindeki usernamei alıyoruz.
				}
				if (cookie.getName().equals("JSESSIONID")) {
					sessionID = cookie.getValue(); // sessionIDyi bu şekilde aldık
				}
			}
		}
		if(sessionID == null || username == null){ // bu şekilde giriş yapmamış kişiler dışındakiler bu memberAreayı göremez.
			response.sendRedirect("login.jsp"); 
		}
	%>
	<%-- Cookieden aldığımız verileri yazdırdık. --%>
	Username:	<%=username%><br /> 
	Current session: <%=sessionID%><br />
	memberArea!!
</body>
</html>






