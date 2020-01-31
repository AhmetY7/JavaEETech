<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit</title>
</head>
<body>
<%-- form sayfasındaki elementlerin namelerini kullanarak getParameter ile değerleri alıyoruz. --%>
Name: <%= request.getParameter("name") %><br/>
Gender: <%= request.getParameter("gender") %><br/>
Languages known: <% // checkbox için servletscript kullanabiliriz.
String[] countries = request.getParameterValues("language"); // Checkboxda seçilenleri getParameterValues ile alabiliriz.
if(countries != null){
	for(int i=0; i<countries.length;i++){
		out.print("<br/>");
	   out.print(countries[i]);	
	   
	}
}else{
	out.print("None Selected");
}

%><br/>


Country: <%= request.getParameter("country") %>
</body>
</html>