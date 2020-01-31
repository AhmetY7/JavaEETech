<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
It'is from original page
<%-- <jsp:forward page="forward.jsp"></jsp:forward> bu şekilde url değişiyor --%>
<%
	//request.getRequestDispatcher("forward.jsp").forward(request, response); // demo.jsp sayfası değişmiyor. ama forwardın içi geliyor ekrarna bu metodla.
	response.sendRedirect("redirect.jsp"); // bununla url değişiyor
%>
</body>
</html>