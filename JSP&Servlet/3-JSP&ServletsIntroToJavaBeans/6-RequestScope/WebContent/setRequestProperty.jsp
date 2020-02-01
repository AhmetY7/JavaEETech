<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="request"></jsp:useBean>

<jsp:setProperty property="firstName" name="user" value="Ahmet"/>
<jsp:setProperty property="lastName" name="user" value="YILMAZ"/>
Values have been set<br/>

<%-- scope request yapınca set yapsak bile diğer sayfalarda göremiyoruz çünkü hala eski request nesnesi var
Aşağıdaki kodla yeni request nesnemizi yüklüyoruz diğer sayfaya ve o sayfaya yönlendiriyoruz. Ama yine get sayfasını başka sayfada açsak default veriler oluyor atanan
veriler olmuyor.
 --%>
<%

request.getRequestDispatcher("getRequestProperty.jsp").forward(request, response);
%>
</body>
</html>