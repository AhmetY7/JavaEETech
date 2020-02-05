<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> <%-- Bu şekilde I18N yi ekliyoruz sayfamıza --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>I18N Demo</title>
</head>
<body>
View website in:
<a href="?locale=en_US">English(US)</a>|
<a href="?locale=es_AR">Spanish</a>|
<a href="?locale=ru_RU">Russian</a>|
<a href="?locale=hi_IN">Hindi</a>
<br/>
<br/>
<hr/>
<%--  --%>
<fmt:setLocale value="${param.locale}"/> <%-- Bu şekilde de URLdeki locale parametresiden locale kodunu alıyorz yani yukarıda verdiğimiz linklerden --%>

<fmt:bundle basename="i18n/website"> <%-- Burada base dosya ismini veriyoruz ve diğer dosya isimleri çok önemli diğer dosya isimleri base dosya 
ismi ile başlamalı ve locale kodu gelmeli ondan sonra. Buradaki dosya isimlerinden anlıyor hangi dil olduğu --%>
<p><fmt:message key="label.hello"/> John, 
<p><fmt:message key="label.welcome"/><%-- Buradaki keyler property sayfalarındaki değişkenlere denk geliyor. --%>
<p><fmt:message key="label.message"/>
<p><fmt:message key="label.thanks"/>
</fmt:bundle>
<br/>
Locale: ${param.locale}

</body>
</html>









