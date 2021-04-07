<%@ page language='java' contentType='text/html; charset=utf-8'	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file="../include/lib.jsp"%>
<script>
</script>
<style>
</style>
</head>
<body>
	<div class='container'>
	<%@ include file ="../include/header.jsp"%>
		<h4>| 결제 완료</h4><hr>
		<div class='row' style='height:300px;'>
			<div class='col'>
				<div class='row' style="height:50px"></div>
				<div class='row d-flex justify-content-center' style="height:30px"><p>결제가 완료되었습니다.</p> </div>
				<div class='row d-flex justify-content-center'>
					<button type="button" class="btn btn-outline-secondary m-5 d-flex justify-content-center"  onclick = 'location.href = "<%=request.getContextPath() %>/"'>메인 화면으로</button>
				</div>
			</div>
		</div>	
	</div>
	<%@ include file ="../include/footer.jsp"%>
</body>
</html>