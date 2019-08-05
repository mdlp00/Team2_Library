<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>[관리자]예약목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w3.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	body {
		padding: 50px 200px 200px 400px;
	}
	.btn {
		color: white;
		text-decoration:none;
	}
	.btn1 {
		font-size:1.7em;
		font-weight: bold;
	}
	.doc-title {
    	padding: 50px 0px 200px;
		width: 900px;
		height: 200px;
	}
	.doc-title1 {
    	width: 500px;
	}
	.doc1 {
		font-size: 0.9em;
		width: 500px;
		height: 30px;
	}
	.rentBtn {
		width: 10px;
		height: 30px;
		background-color: rgba(255, 0, 0, 0.6);
		text-align : center;
		color : white;
	}
	.w3-button:action {
		box-shadow: 0px 0px 5px 3px gray inset;
	}
	
	tr {
		display: table-row;
		vertical-align: inherit;
		border-color: inherit;
	}
	table thead th {
		background: #f0f8fd;
	}
	table.bbs th.first {
		border-left-width: 1px;
	}
	table th {
		padding: 5px 0px;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	// [1] 기본값 설정
	// 자료검색 버튼
	$('.search1').hide(); //하단
	$('#search').click(function() {
		$('.search1').toggle();
	});
	// 열린공간 버튼
	$('.b1').hide(); //하단
	$('#a1').click(function() {
		$('.b1').toggle();
	});
	$('.c1').hide(); //하단
	$('#bb1').click(function() {
		$('.c1').toggle();
	});
	// 도서관 안내 버튼
	$('.b2').hide(); //하단
	$('#a2').click(function() {
		$('.b2').toggle();
	});
	$('.c2').hide();
	$('#bb2').click(function() {
		$('.c2').toggle();
	});
	// 마이라이브러리
	$('.b3').hide(); //하단
	$('#a3').click(function() {
		$('.b3').toggle();
	});
	

});

function send(f){
	if(confirm('대여를 승낙하겠습니까?') == false)
		return;
	
	f.action='rentGo.bo';
	f.submit();
	
}

</script>
</head>
<body>
	<!-- Header -->
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a>
		</nav>
		<a href="${pageContext.request.contextPath}/study/goMain.bo" class="logo">Daye Library</a>
		<nav class="right">
			<a href="#" class="button alt">Log in</a>
		</nav>
	</header>
	
	<!-- Menu -->
	<nav id="menu">
		<ul class="links">
			<li><a href="${pageContext.request.contextPath}/study/goMain.bo" class="btn1">메인페이지</a></li>
			<li><a href="#" class="btn1" id="search" >자료검색</a>
			<div class="subMenu">
				<ul>
					<li class="search1"><a href="#" class="w3-button btn">주제별 자료검색</a></li>
					<li class="search1"><a href="#" class="w3-button btn">희망도서신청</a></li>
					<li class="search1"><a href="#" class="w3-button btn">대출 베스트</a></li>
				</ul>
			</div>
			<li><a href="#" class="btn1" id="a1">열린공간</a>
				<ul>
					<li class="b1"><a href="#" class="w3-button btn">공지사항</a></li>
					<li class="b1"><a href="#" class="w3-button btn">자주하는 질문</a></li>
					<li class="b1" id="bb1"><a href="#" class="w3-button btn">좌석예약</a>
						<ul>
							<li class="c1"><a href="#" class="w3-button btn">좌석예약</a></li>
							<li class="c1"><a href="#" class="w3-button btn">디지털 자료실 좌석예약</a></li>
							<li class="c1"><a href="#" class="w3-button btn">열람실좌석 예약현황</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li><a href="#" class="btn1" id="a2">도서관안내</a></li>
			<ul>
				<li class="b2"><a href="#" class="w3-button btn">도서관현황</a></li>
				<li class="b2" id="bb2"><a href="#" class="w3-button btn">이용안내</a></li>
			 	<ul>
					<li class="c2"><a href="#" class="w3-button btn">이용시간 및 휴관일</a></li>
					<li class="c2"><a href="#" class="w3-button btn">회원가입 안내</a></li>
					<li class="c2"><a href="#" class="w3-button btn">시설이용 안내</a></li>
					<li class="c2"><a href="#" class="w3-button btn">자료이용 안내</a></li>
					<li class="c2"><a href="#" class="w3-button btn">오시는길</a></li>
				</ul>
			</ul>
			<li><a href="#" class="btn1" id="a3">마이라이브러리</a></li>
			<ul>
		 		<li class="b3"><a href="#" class="w3-button btn">내서재</a></li>
				<li class="b3"><a href="#" class="w3-button btn">대출조회 및 연기</a></li>
				<li class="b3"><a href="#" class="w3-button btn">대출예약확인 및 취소</a></li>
				<li class="b3"><a href="#" class="w3-button btn">회원정보</a></li>
			</ul>
		</ul>
		<ul class="actions vertical">
			<li><a href="#" class="button fit">Login</a></li>
		</ul>
	</nav>

	<!-- Body -->
	
		<form method="post" action="#" name="frm" id="frm">
			<input type="hidden" name="reserve_no" id="reserve_no">
			<input type="hidden" name="m_no" id="m_no">
			<input type="hidden" name="b_no" id="b_no">
		</form>
	
	<div class="sub">
		<div class="doc-title"><h2>[ 예약리스트현황 ]</h2>
			<div class="doc-title1"><h4>이용자 예약리스트</h4>
				<ul>
					<li class="doc1" style="color : red;">관리자 ID : ${SID}</li> 
					<li class="doc1">총 예약수 : <%-- ${BOOK} --%>권 예약중</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 책 예약 확인 및 취소 -->
	<table>
		<tr class="first">
			<th>이용자 ID</th>
			<th>이용자 이름</th>
			<th>책 이름</th>
			<th>예약 날짜</th>
			<th>대여 승인</th>
		</tr>
		<c:forEach var="data" items="${LIST}">
		<form>
			<input type="hidden" name="reserve_no" id="reserve_no" value="${data.reserve_no}">
			<input type="hidden" name="m_no" id="m_no" value="${data.m_no}">
			<input type="hidden" name="b_no" id="b_no" value="${data.b_no}">
		
			<tr>
				<th>${data.m_id}</th>
				<th>${data.m_name}</th>
				<th>${data.b_name}</th>
				<th>${data.reserve_date}</th>
				<th><button class="rentBtn" onclick="send(this.form); return false;">승인</button></th>
			</tr>
		</form>
		</c:forEach>
		<c:if test="${empty LIST}">
			<tr class="first">
				<td class="dataEmpty first last td1" colspan="10">예약 내역이 없습니다.</td>
			</tr>
		</c:if>
	</table>
	<form method="POST" action="cancelReserveBook.bo" id="frm" name="frm">
		<input type="hidden" id="rno" name="rno">
	</form>
</body>
</html>