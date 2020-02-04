<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<a href="<c:url value="/AnotherPage.jsp" />">Another Page</a> <%-- url tagı link üretiyor bu nednle üstüne tıklanmıyor sadece string üretiyor bu nedenle a href e bağlıyoruz--%>

<c:redirect url="/AnotherPage.jsp"/> <%-- redirect tag ile direk yönlendirme yapıyoruz bu kod okunduğunda direk yönlendiriyor link falan yok --%>
</body>
</html>