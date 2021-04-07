<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file="../include/lib.jsp"%>
<script>
function init() {
	$('#plusBtn').click(() => {
		amount = $('input[name="quantity"]').val();
		$('input[name="quantity"]').val(parseInt(amount) + 1);
	})
	
	$('#minusBtn').click(() => {
		amount = $('input[name="quantity"]').val();
		if(parseInt(amount) > 1) {
			$('input[name="quantity"]').val(parseInt(amount) - 1);
		} else {
			$('input[name="quantity"]').val(1);
		}	
	});
	$('#cart').click(()=>{
		$('.modal-title').text('장바구니');
		$('.modal-body').text('장바구니에 추가되었습니다.');
		$('#commonModal').modal();
		$('#noBtn').hide();
	});
	
	$('#okBtn').click(()=>{
		$('#commonModal').modal('hide');
	})
};

$(init);
</script>
<style>
[id*='ProductInfo'] {
	width: 150px;
	height: 100px;
	margin-top: 10px;
	margin-bottom: 5px;
	margin-left: 0;
	text-align: center;
}

.bold {
	font-weight: bold;
}

#Info {
	font-size: 12px;
}

[id*=productImg] {
	display: table;
	width: 100%;
	height: 100%;
	border: 1px solid lightgrey;
}

table {
	text-align: center;
}

#clothImage {
	width: 400px;
	height: 350px;
	border: 1px solid lightgrey;
}

.fileUpload {
	position: relative;
	overflow: hidden;
	margin: 10px;
}

.fileUpload input.upload {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
}
</style>
</head>
<body>
	<div class='container'>
		<%@ include file="../include/header.jsp"%>

		<div class='row'>
			<div class='col'>
				<div class='row' id='clothImage'>
					<div class='col'>
						<div class='row' style="height: 150px"></div>
						<div class='row d-flex justify-content-center'>
							<p>옷 이미지</p>
						</div>
						<div class='row' style='height: 100px'></div>
						<div class='row'>
							<div class='col'></div>
							<div class='col-8 d-flex justify-content-end'>
								<div class="fileUpload btn btn-secondary">
									<span>업로드</span> <input id="uploadBtn" type="file"
										class="upload" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class='row'>
					<div class='col'></div>
				</div>
			</div>
			<div class='col mt-5'>
				<h2>오버핏티셔츠</h2>
				<h2>10,000원</h2>
				<div class='form-group row mt-3'>
					<div class='col'></div>
				</div>
				<div class='form-group row mt-3'>
					<label for='color' class='col-3 col-form-label'>색상</label> <select
						name='color' class='col-5'>
						<option value='white'>흰색</option>
						<option value='black'>검정색</option>
						<option value='blue'>파랑색</option>
					</select>
				</div>
				<div class='form-gruop row mt-3'>
					<label for='size' class='col-3 col-form-label'>사이즈</label> <select
						name='size' class='col-5'>
						<option value='S'>S</option>
						<option value='M'>M</option>
						<option value='L'>L</option>
						<option value='Xl'>XL</option>
						<option value='2XL'>2XL</option>
					</select>
				</div>
				<div class='form-group row mt-3'>
					<label for='quantity' class='col-3 col-form-label'>수량</label>
					<button type='button' class='btn btn-outline-dark' id='minusBtn'>-</button>
					<input type='text' class='col-2' name='quantity' value='1'
						readonly='readonly' id='quantity' />
					<button type='button' class='btn btn-outline-dark' id='plusBtn'>+</button>
				</div>
				<div class='form-group row mt-3'>
					<div class='col'>
						<div class='row d-flex justify-content-center'>
							<a href='<%=request.getContextPath() %>/cart' class='btn btn-outline-dark'>장바구니</a>
							<div style='width: 30px'></div>
							<a href='<%=request.getContextPath() %>/purchase' class='btn btn-outline-dark'>구매</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>

		<div class='row'>
			<div class='col' id='info'>
				<p class='bold'>상품 상세</p>
				※ 모델컷의 경우 촬영장소의 환경에 따라 실제 색상과 상이할 수 있습니다. 기존의 오리지널 무지 제품 대비 기장 감은
				짧으면서 어깨가 드롭되는 와이드핏으로 제작하였습니다. 부드러운 촉감의 기모 원단과 네추럴한 생지 스트랩을 사용하였습니다.
				후드 조절 끈은 두껍고 튼튼한 끈을 사용하였고, 끝 부분은 수축튜브로 깔끔하게 마감하였습니다. 넥 라인을 헤리테이프로 마감
				처리하였고, 옷이 틀어지거나 잘 뜯어지지 않는 튼튼한 봉제방식을 사용하여 내구성을 높였습니다.
				<p class='bold mt-3'>세탁방법</p>
				<ul>
					<li class='status-bar'>드라이 클리닝 또는 단독 손세탁을 권장합니다.</li>
					<li class='status-bar'>찬물에 뒤집어 세탁해 주십시오.</li>
					<li class='status-bar'>다리미 사용 시 천을 올린 후 다림질해 주십시오.</li>
				</ul>
				<p class='bold'>MODEL SIZE</p>
				<ul>
					<li class='status-bar'>모델 착용 컬러 그레이, 착용사이즈 2XL, 키 186, 허리 25,
						신발 280</li>
				</ul>
			</div>
		</div>
		<hr>

		<div class='row'>
			<div class='col' id='info'>
				<table class='table table-bordered'>
					<thead class='thead-light'>
						<tr>
							<th>Size (cm)</th>
							<th>M</th>
							<th>L</th>
							<th>XL</th>
							<th>2XL</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>총기장</th>
							<td>70.5</td>
							<td>73</td>
							<td>76.5</td>
							<td>79</td>
						</tr>
						<tr>
							<th>어깨넓이</th>
							<td>60</td>
							<td>63</td>
							<td>65.5</td>
							<td>68.5</td>
						</tr>
						<tr>
							<th>가슴둘레</th>
							<td>60</td>
							<td>63</td>
							<td>66.5</td>
							<td>69</td>
						</tr>
						<tr>
							<th>어깨넓이</th>
							<td>58</td>
							<td>58</td>
							<td>59</td>
							<td>59</td>
						</tr>
					</tbody>
				</table>
				<p class='bold'>사이즈</p>
				<ul>
					<li class='status-bar'>상세 사이즈는 측정 방법과 위치에 따라 1~3cm 오차가 발생할 수
						있습니다.</li>
					<li class='status-bar'>기재된 상세 사이즈와 실측 오차(1~3cm)에 대한 불량처리는 어려우며
						교환 및 환불 사유가 될 수 없습니다.</li>
				</ul>
			</div>
		</div>
		<hr>

		<div class='row'>
			<div class='col' id='info'>
				<p class='bold'>유의사항</p>
				<ul>
					<li>상품마다 이미지 크기가 다르므로, 해당 상품의 이미지 가이드를 확인해 주세요.</li>
				</ul>
				<p class='bold mt-3'>교환/환불 불가 사항</p>
				<ul>
					<li>더좋은 쇼핑의 모든 상품은 고객 주문에 따라 개별 제작되는 방식으로 단순 변심을 포함, 아래의 경우에는
						교환/환불이 불가합니다.</li>
				</ul>
				<p class='bold mt-3'>디자인 시안 색상의 차이</p>
				<ul>
					<li>프린팅 방식과 원단 재질에 따른 경우의 수가 다양하므로 인쇄 후 모니터, 혹은 종이 출력물과 색상 차이가
						발생할 수 있습니다.</li>
				</ul>
			</div>
		</div>
		<hr>

		<div class='row' >
			<div class='col'>
				<table class='table table-bordered'>
					<thead class='thead-light'>
						<tr>
							<th>NO</th>
							<th>이미지</th>
							<th>제목</th>
							<th>아이디</th>
							<th>별점</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>1</th>
							<td><div id='productImg1'>
									<a href='#'><span>옷 이미지1</span> </a>
								</div></td>
							<td>좋아요</td>
							<td>id1</td>
							<td>★★★★★</td>
							<td>21.03.15</td>
						</tr>
						<tr>
							<th>2</th>
							<td><div id='productImg2'>
									<a href='#'><span>옷 이미지2</span> </a>
								</div></td>
							<td>편해요</td>
							<td>id2</td>
							<td>★★★★☆</td>
							<td>21.03.16</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class='row' style='height:100px'></div> 
	</div>
	
	<%@ include file="../include/footer.jsp"%>
</body>
</html>