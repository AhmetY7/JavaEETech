<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="session"></jsp:useBean>
<form action="getSessionProperty.jsp" method="post">
<%-- inputun attributesinde olan nameler User classındakilerle aynı olmak zorunda. getPropertynin properti att.leri de aynı olmak zorunda verilieri aldığımmız
 java sınıfı ile  --%>
 <%-- Default değerleri yüklüyoruz texboxlara --%>
First name: <input type="text" name="firstName" value='<jsp:getProperty property="firstName" name="user"/>'><br/>
Last name: <input type="text" name="lastName" value='<jsp:getProperty property="lastName" name="user"/>'><br/>
<input type="submit" value="submit">
</form>
</html>