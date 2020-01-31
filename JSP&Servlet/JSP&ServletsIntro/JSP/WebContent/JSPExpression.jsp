<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Expression denemeleri</title>
</head>
<body>
<%! public int x= 22; %> <%-- bu şekilde declerasyon yapıyoruz --%> 
<%-- <% public int y= 22; %>  bu şekilde değişkene access modifiers verirsek hata veriyor bunun için yukarıdaki gibi ! kullanmak zorundayız--%> 
<br />
<%= x %> <%-- bu şekilde expressionları kullanıyoruz --%> 
<br>
<%! // bu expression genelde methodları yazmak için kullanırız.
	String message() {
	return "JSP";
}
%>
<%= message() %>
<br />
<%= new Integer(22) %> <%-- int x = 22 hatalı bu ama yandaki doğru --%> 
<br />
<%= new String("Ahmet") %>
<br />
<%= new java.util.Date() %>
<br />
<%= 25*4 %>
<br/>
<%
int x = 25;
out.println(x);

if(x > 5) {
	out.println("X is greater than 25");
}
out.print("<br/>"); //satır atlamak için bu şekilde br kullanmamız lazım
for(int i=0; i<10; i++) {
	
	out.print(i +" ");
}
%> <%-- Bu şekilde sınır olmadan java kodu yazmak için alan --%>
<br/>
<%= x %>
</body>
</html>