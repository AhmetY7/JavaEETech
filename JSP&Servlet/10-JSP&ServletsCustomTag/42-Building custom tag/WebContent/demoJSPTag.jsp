<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib tagdir="/WEB-INF/tags" prefix="d"%> <%-- Bu şekilde custom tagimizi import ettik. --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo</title>
</head>
<body>
<%-- Demo taglar için klasör oluşturmalıyız. WEB-INF içinde tags diye oluşturduk --%>
<%-- Nadir kullanılır bunlar --%>
<%-- tag ismi oluşturduğumuz sayfanın ismi oluyor buna dikkat edelim --%>
<d:demo parameter="10000"/>
</body>
</html>

