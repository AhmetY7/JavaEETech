<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set property</title>
</head>
<body>
<%-- Bütün application beanın sessionu geçerli her browser özelinde yeni session açılmıyor  yani set ettiğimiz değerleri başka browserda açarsak yine set ettiklerimizi görürüz
default valueleri değil
--%>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="application"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Ahmet"/>
<jsp:setProperty property="lastName" name="user" value="YILMAZ"/>
Values have been set
</body>
</html>