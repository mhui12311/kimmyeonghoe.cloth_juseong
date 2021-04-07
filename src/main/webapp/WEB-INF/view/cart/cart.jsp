<%@ page language='java' contentType='text/html; charset=utf-8'	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file="../include/lib.jsp"%>
<script>
function init(){
	$('#delCartBtn').click(()=>{
		$('#delCartModal').modal();
	})
	$('#delCartOkBtn').click(()=>{
		$('#tr2').empty();
		$('#delCartModal').modal('hide');
		$('#totalPrice').text('10,000원')
	});
	
	$('#fixCartBtn').click(()=>{
		$('#totalPrice').text('20,000원');
	})
}
$(init);
</script>
<style>
[id*='Img'] {
	width: 150px;
	height: 150px;
	border: 1px solid lightgrey;
	text-align: center;
	margin-left: 0;
}
</style>
</head>
<body>
	<div class='container'>
	<%@ include file ="../include/header.jsp"%>
		<div class='row'>
			<div class='col'>
				<h5>
					<b>장바구니</b>
				</h5>
			</div>
		</div>
		<div class='row' style='height: 450px'>
			<div class='col'>
				<form>
					<table class='table text-center'>
						<thead>
							<tr>
								<th></th>
								<th colspan='3'>상품정보</th>
								<th>수량</th>
								<th>가격</th>
							</tr>
						</thead>
						<tbody id='cartList'>
							<tr>
								<td><input type='radio' id='clothNo' required></td>
								<td><div id="clothImg">
										<br>
										<p>옷 이미지</p>
									</div></td>
								<td>오버핏 티셔츠<br>[검은색]
								</td>
								<td>사이즈: M</td>
								<td><input type='number' name='amount' style='width: 50px;'
									value='1'></td>
								<td>10,000원</td>
							</tr>
							<tr id='tr2'>
								<td><input type='radio' id='clothNo' required></td>
								<td><div id="clothImg">
										<br>
										<p>옷 이미지</p>
									</div></td>
								<td>오버핏 티셔츠<br>[흰색]
								</td>
								<td>사이즈: L</td>
								<td><input type='number' name='amount' style='width: 50px;'
									value='1'></td>
								<td>10,000원</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<hr>
		<div class='row' id='pricePlace' style="height: 100px">
			<div class='col'>
				<div class='row' style="height: 35px"></div>
				<div class='row'>
					<div class='col-8'></div>
					<div class='col d-flex justify-content-end '>
						<label for="price">총 금액:</label> <span id='totalPrice'>20,000원</span>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<form action='purchase'>
		
		<nav style='height: 100px'>
			<button type='submit' class='btn btn-secondary float-right'>구매하기</button>
			<button type='button' class='btn btn-secondary float-right mr-2'
				id='fixCartBtn' data-toggle='modal' data-target='#fixCartModal'>수정</button>
			<button type='button' class='btn btn-secondary float-right mr-2'
				id='delCartBtn' data-toggle='modal' data-target='#delCartModal'>삭제</button>
		</nav>

		</form>



		<div id='fixCartModal' class='modal fade' tabindex='-1'>
			<div class='modal-dialog'>
				<div class='modal-content'>
					<div class='modal-header'>
						<button type='button' class='close' data-dismiss='modal'>
							<span>&times;</span>
						</button>
					</div>
					<div class='modal-body'>
						<p>장바구니가 수정되었습니다</p>
					</div>
					<div class='modal-footer'>
						<button type='button' class='btn btn-secondary'
							data-dismiss='modal'>확인</button>
					</div>
				</div>
			</div>
		</div>
		<div id='delCartModal' class='modal fade' tabindex='-1'>
			<div class='modal-dialog'>
				<div class='modal-content'>
					<div class='modal-header'>
						<button type='button' class='close' data-dismiss='modal'>
							<span>&times;</span>
						</button>
					</div>
					<div class='modal-body'>
						<p>상품을 삭제하시겠습니까?</p>
					</div>
					<div class='modal-footer'>
						<button type='button' class='btn btn-secondary'
							data-dismiss='modal'>아니오</button>
						<button type='button' class='btn btn-secondary' id='delCartOkBtn'
							data-dismiss='modal'>예</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file ="../include/footer.jsp"%>
</body>
</html>