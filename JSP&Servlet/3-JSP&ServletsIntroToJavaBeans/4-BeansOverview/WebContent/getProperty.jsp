<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get property</title>
</head>
<body>
<%-- useBean ile propertyleri alacağımız sınıfı söylüyoruz bi id veriyoruz ve class ile kullanacağımız classın yolunu veriyoruz. --%>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="session"></jsp:useBean> 

<%-- getProperty ile de sınıfın propertisini alıyoruz. name ile de hangi Beanı kullanacağımızı söylüyoruz. property attribute aldığımız sınıftaki değişken ismi ile aynı olmak zorunda --%>
First Name: <jsp:getProperty property="firstName" name="user"/><br/> 
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>