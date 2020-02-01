<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set property</title>
</head>
<body>
<%-- useBean ile değer atacağımız sınıfı söylüyoruz bi id veriyoruz ve class'a ile kullanacağımız classın yolunu veriyoruz. --%>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="session"></jsp:useBean>
<%-- property ile sınıftaki değişkene atayacağımız değişkeni veriyoruz. name'e beanın idsini veriyoruz. value ise atayacağımız değer. --%>
<jsp:setProperty property="firstName" name="user" value="Ahmet"/>
<jsp:setProperty property="lastName" name="user" value="Yılmaz"/>
Values have been set
</body>
</html>