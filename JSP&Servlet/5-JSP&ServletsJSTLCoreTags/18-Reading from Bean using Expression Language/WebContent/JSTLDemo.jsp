<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   	


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="page"></jsp:useBean> <%-- java classtan veri almak için bean kullanıyoruz. bir tane id veriyoruz
ve class yolunu --%>

<c:out value="${user.firstName}"/> <%-- Classtaki değişkenleri yazdırıyoruz. useBean kullandığımız için private verilere de erişebiliyoruz.
get metodlarını kullanarak da veriyi alabiliriz ya da private olan değişkeni direk yazabiliriz. --%>
${user.lastName}
</body>
</html>