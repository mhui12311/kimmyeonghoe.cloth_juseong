<%@ page language='java' contentType='text/html; charset=utf-8'
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
<head>
<title>THEJOEUN ShoppingMall</title>
<%@ include file="../include/lib.jsp"%>
<script>
function opneTerms() {
	
}

function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=addr1]').val(data.address);
			$('[name=addr2]').val(data.buildingName);
		}
	}).open();
}

function init(){
	$('input[name = "address"]').on({
		change() {
			let valueCheck = $('input[name = "address"]:checked').val();
		    if ( valueCheck == 'new' ) {
		        $('[name = "deliveryDetail"]').attr('disabled', false);
		    } else {
		        $('[name = "deliveryDetail"]').attr('disabled', true);
		    }
		}
	});
	
	$('#addrDetail').click(function(){
	    $('#addressModal').modal('hide');
	 });
}

$(init);
</script>
<style>
table {
	width: 100%;
	border-collapse: collapse;
	text-align: center;
	border: 1px solid lightgray;
}
th {
	border: 1px solid lightgray;
	padding: 10px;
}
td {
	border: 1px solid lightgray;
	padding: 10px;
}

table.type10 {
    width: 100%;
    border-collapse: collapse;
    text-align: left;
    border-bottom: 1px solid #444444;
    border-top: 1px solid #444444;
}
table.type10 th {
  padding: 15px;
  font-weight: bold;
  vertical-align: top;
}
  table.type10 th {
  width: 150px;
  padding: 15px;
}
</style>
</head>
<body>
	<div class='container'>
		<%@ include file="../include/header.jsp"%>

		<form action='purchaseSuccess'>
			<div class='row d-flex justify-content-center mt-3'>
				<div class='col'>
					<h5>
						<b>| 결제 상품</b>
					</h5>
					<table>
						<thead>
							<tr>
								<th>옷 정보</th>
								<th>수량</th>
								<th>금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class='row d-flex justify-content-center'>
										<p>오버핏 티셔츠</p>
									</div>
									<div class='row d-flex justify-content-center'>
										<p>[검정색:M]</p>
									</div>
								</td>
								<td>2개</td>
								<td>20,000원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class='row d-flex justify-content-center mt-5'>
				<div class='col'>
					<h5>
						<b>| 배송지 입력</b>
					</h5>
					<table class="type10">
						<tr>
							<th>배송지</th>
							<td><input type='radio' name='address' value='existing'
								id='oldPlace' checked><label>기존 배송지</label> &nbsp; <input
								type='radio' name='address' value='new' id='newPlace'><label>신규배송지
									배송지</label></td>
						</tr>
						<tr>
							<th>수령인</th>
							<td><input type='text' id='name' name='deliveryDetail'
								placeholder='김명회' disabled></td>
						</tr>
						<tr>
							<th>연락처</th>
							<td><input type='number' id='phone' name='deliveryDetail'
								placeholder='01011111111' disabled></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<div class='row'>
									<div class='col'>
										<input type='number' id='zip' name='deliveryDetail'
											placeholder='12321' disabled> &nbsp;
										<button type='button' name='deliveryDetail'
											class='btn btn-outline-secondary' data-toggle='modal'
											data-target='#addressModal' disabled>주소검색</button>
									</div>
								</div>
								<div class='row'>
									<div class='col'>
										<input type="text" name="deliveryDetail" style='width: 400px'
											readonly value='경기도 고양시 일산동구 중앙로 1275번길 38-10' />
									</div>
									<div class='col'>
										<input type="text" name="deliveryDetail" style='width: 400px'
											value='202' />
									</div>

								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class='row d-flex justify-content-center mt-5'>
				<div class='col'>
					<h5>
						<b>| 최종 결제금액 확인</b>
					</h5>
					<table class="type10">
						<tr>
							<th>총 상품 가격</th>
							<td><p>20,000 원</p></td>
						</tr>
						<tr>
							<th>배송비</th>
							<td>2,500 원 (택배)</td>
						</tr>
						<tr>
							<th>총 결제 금액</th>
							<td><span id='price'>22,500 원</span></td>
						</tr>
					</table>
					<div class='row d-flex justify-content-start mt-3 ml-1'>
						<button type='button' class='btn btn-secondary'
							data-toggle='modal' data-target='#termsModal'>약관보기</button>
					</div>
					<div class='row d-flex justify-content-start m-2'>
						<input type='checkbox'>&nbsp;
						<p>약관에 동의하십니까?</p>
					</div>
					<div class='row d-flex justify-content-center mt-1'>
						<button type='submit' class='btn btn-secondary'>결제하기</button>
					</div>
				</div>
			</div>
		</form>

		<div id='termsModal' class='modal fade' tabindex='-1'>
			<div class='modal-dialog modal-lg'>
				<div class='modal-content'>
					<div class='modal-body'>
						<textarea readonly="readonly" rows="30" cols="90">
제 1 조 (목적)
         
 이 약관은 더조은쇼핑 주식회사 ("회사" 또는 "더조은쇼핑")가 제공하는 더조은쇼핑 및 더조은쇼핑 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
         
         
제 2 조 (정의)
         
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 더조은쇼핑 및 더조은쇼핑 관련 제반 서비스를 의미합니다.
②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 
            </textarea>
					</div>
					<div class='row d-flex justify-content-center mt-1'>
						<button type='button' class='btn btn-secondary'
							data-dismiss='modal'>닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>