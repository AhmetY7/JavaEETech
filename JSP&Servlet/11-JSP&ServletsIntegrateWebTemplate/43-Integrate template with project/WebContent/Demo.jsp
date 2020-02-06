<%-- Dışarıdan aldığımız dosyaların klasörlerini WebContent içine attık. footer header dosyalarımız için ayrı klasör oluşturduk include diye
footer ve header html idi. Onları .jsp yaptık
--%>
<jsp:include page="/include/header.jsp" /> <%-- Bu şekilde başka sayfa include ediyoruz --%>
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h1>Hello World</h1>
		</div>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />