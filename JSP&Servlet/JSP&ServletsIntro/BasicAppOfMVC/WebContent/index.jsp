<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
It's home page. <br/>
<a href="<%= request.getContextPath() %>/Controller?page=login">Login</a> <%-- <%= request.getContextPath() %>  bu ifade bize http://localhost:8080/BasicAppOfMVC veriyor --%>
<a href="<%= request.getContextPath() %>/Controller?page=signUp">Sign Up</a>
<a href="<%= request.getContextPath() %>/Controller?page=about">About</a>
</body>
</html>