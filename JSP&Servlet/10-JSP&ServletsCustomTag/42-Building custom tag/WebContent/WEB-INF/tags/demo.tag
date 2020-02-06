<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="parameter" required="true" description="tag description" type="java.lang.Integer" %> <%-- Bu şekilde parametre alabiliriz tagımizdan
ama zorunlu da değil. --%>
<%-- Tag çağrıldığında aşağıdaki ifadeyi yazıyor. --%>
<strong>Testing custom tag ${parameter}</strong>
