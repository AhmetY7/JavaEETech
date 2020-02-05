<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
${fn:trim("          Ahmet           Yılmaz         . com")} <%-- trim fonksiyonu aralarda birden fazla boşluk olan kelimelerin arasında bir tane boşluk olmasını sağlıyor --%>
<br />
<h1> ExcapeXML Demo</h1>
${fn:escapeXml("<h1> ExcapeXML Demo</h1>")} <%-- html olarak algılamıyor artık direk <h1> olarak basıyor ekrana --%>
<br />
	<c:set var="We" value="StudyEasy.org"></c:set>

	${fn:startsWith("studyeasy.org","az") } <%-- ilk verdiğimiz string ikinci verdiğimiz string ile başlıyorsa true döner --%>
	<br /> ${fn:endsWith( We , "org") } <%-- ilk verdiğimiz değişken ikinci ile bitiyorsa true --%>
	<br /> ${fn:contains(We , "ORG") } <%-- ilk verdiğimiz değişken ikinciyi içeriyorsa true --%>
	<br /> ${fn:containsIgnoreCase("studyeasy.org","easy") } <%-- contains functionunun büyük küçük harf duyarlılığı olmayanı --%>

</body>
</html>









