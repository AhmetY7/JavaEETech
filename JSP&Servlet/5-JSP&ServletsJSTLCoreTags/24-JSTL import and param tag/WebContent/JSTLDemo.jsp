<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- Templateleri nasıl import ederiz onun örneği header ile footer templateini çağırıyoruz. --%>
<c:import url="/include/header.jsp">
<c:param name="title" value="Ahmet"></c:param> <%-- hard code yerine custom ayarlar eklemek istersek bu şekilde import tagları arasına ekleyebiliriz. --%>

</c:import>

Content goes here

<c:import url="/include/footer.jsp"></c:import>






