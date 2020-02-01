<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="session"></jsp:useBean>
<%-- setSessionPropertide yazdığımız değerleri alabilmemiz için setProperty tagını yazmak zorundayız 
inplace için propertyi * yapmamız gerekiyormuş yani. yani ilgili propetrylere değerleri ata demekmiş *. Bu nedenle User classtaki property isimlerini buralarda
doğru girmeliyiz.--%>
<jsp:setProperty property="*" name="user"/> 
First Name: <jsp:getProperty property="firstName" name="user"/><br/>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>