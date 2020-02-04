<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  <%-- JSTL tagları kullanabilmek için bunu implemente ediyoruz 
 Core tags için taglib implemente ettik. Sql,Jstl function, formatting için farklı kod var. Internete yazınca çıkıyor. --%>	


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>

<c:set var="name" value="Ahmet"></c:set> <%-- buradaki var attributunde değişken ismi veriyoruz value ise değeri --%>
<c:out value="${name}"></c:out> <br/> <%-- name değişkenini yazdırdık --%>
${name} <%-- name değişkenini yazdırdık --%>
<c:remove var="name"/> <%-- var'a verdiğimiz değişken ismini memoryden siler --%>
${param.msg} <%-- eğer bize sağlanan msg parametresi varsa onun değerini yazar yani urlye ?msg=hello dersek hello yazdırır sayfaya --%>
</body>
</html>