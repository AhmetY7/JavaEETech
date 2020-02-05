<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%> <%-- XML taglarını bu şekilde sayfamıza ekliyoruz --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	<c:import url="/Users.xml" var="XMLFile" /> <%-- Önclikle xml Sdosyamızı import ediyoruz. değişken isme vermezsek xml sayfasını yazıyor ekrana 
	değişken ismi verirsek sayfaya yazmıyor kontrol edebiliyoruz --%>
	<x:parse xml="${XMLFile}" var="XMLdoc" /> <%-- Önce parse ediyoruz --%>
	Name:	<x:out select="$XMLdoc/users/user[2]/name" /> <%-- ekrana yazmak için <x:out kullanıyoruz. select i kullanıyoruz ve parse ettiğimiz dğişkeni kuulanıyoruz yani $XMLdoc 
	sonra xml dosyası içindeki tagları kullanarak ilerliyoruz. Buradaki array indexsi değil tag indexsi user taglarından ikinci user taginin bilgilerini alıyoruz
	--%>
	<br />Gender:	<x:out select="$XMLdoc/users/user[2]/gender" />
	<br /> Age:	<x:out select="$XMLdoc/users/user[2]/age" />
	
</body>
</html>









