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
		String username = null, sessionID = null;
	    if(request.getSession().getAttribute("username") == null){ // request nesnesi ile de kontrol sağlayabilriiz
	    	response.sendRedirect("login.jsp");
	    }else{
	    	username = request.getSession().getAttribute("username").toString(); // bu şekilde isimi alabiliriz
	    	sessionID = request.getSession().getId(); // Id yi de bu şekilde alabiliriz.
	    }
	 

	%>
	Username:
	<%=username%><br /> Current session:
	<%=sessionID%><br /> memberArea!!
    <form action="<%= request.getContextPath()%>/MemberAreaController" method="get">
    <input type="hidden" name="action" value="destroy">
    <input type="submit" value="logout">
    </form>
</body>
</html>






