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
<%
String URL ="studyeasy.org";

%>
<c:forTokens items="<%=URL%>" delims="." var="temp"> <%-- bu şekilde URL i noktaya göre parçaladık. ve foreach loop işliyor değerler tempte her iterasyonda 
itemse direk string değerini de verebilirdik. --%>
${temp}
<br/>
</c:forTokens>
</body>
</html>








