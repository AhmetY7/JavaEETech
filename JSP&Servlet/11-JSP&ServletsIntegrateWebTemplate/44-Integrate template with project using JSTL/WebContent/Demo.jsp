<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- header dosyasındaki sayfa ismini yani title'ı değiştirmek için buradan veriyoruz headeri dinamik yapıyoruz expression kullanarak --%>
<c:import url="include/header.jsp">
	<c:param name="title" value="Demo Page"/> <%-- İmport tagları arasına yazdık titlemızı --%>
</c:import>
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h1>Hello World!</h1>
		</div>
	</div>
</div>
<c:import url="include/footer.jsp"></c:import>