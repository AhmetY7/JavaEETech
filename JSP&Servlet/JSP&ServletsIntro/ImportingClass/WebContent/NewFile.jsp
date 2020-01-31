<%@ page import="java.util.Date,com.java.classs.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%= new Date() %>
<%-- Yukarıdaki şekilde import yaparak kullanabiliriz ya da aşağıdaki gibi uzun ismi veririz --%>
<% out.print(new java.util.Date()); %>
<br/>
<% out.print(new UserDefined().Demo()); %>
</body>
</html>