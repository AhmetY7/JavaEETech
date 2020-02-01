<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set property</title>
</head>
<body>
<%-- bu page scopunda ise sadece set edildiği sayfayı etkiler yani bu sayfayı çalıştırdıktan sonra getPageProperty sayfasına gitsek default valueler gözükür
set ettiğimiz değerler değil
 --%>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="page"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Ahmet"/>
<jsp:setProperty property="lastName" name="user" value="YILMAZ"/>
Values have been set <br/>

First Name: <jsp:getProperty property="firstName" name="user"/><br/>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>