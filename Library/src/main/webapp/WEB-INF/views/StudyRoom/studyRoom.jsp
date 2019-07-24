<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Generic - Intensify by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
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

	body {font-family: "Times New Roman", Georgia, Serif;}
	h1, h2, h3, h4, h5, h6 {
	  font-family: "Playfair Display";
	  letter-spacing: 5px;
	}

	.btn {
		color: white;
		text-decoration:none;
	}
	.btn1 {
		font-size:1.7em;
		font-weight: bold;
	}
	.SSul {
		height: 200px; padding-top: 10px;
	}
	.ssul {
		margin: 0px; padding: 0px;
	}
	.ttl {
		margin: 0px 10px; padding: 0px; border: 0px; display: inline-block;
	}
	.read {
		width: 300px; height: 250px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
	//[1] 기본값 설정
		// 자료검색 버튼
		$(".search1").hide(); //하단
		$("#search").click(function() {
			$(".search1").toggle();
		});
		// 열린공간 버튼
		$(".b1").hide(); //하단
		$("#a1").click(function() {
			$(".b1").toggle();
		});
		$(".c1").hide(); //하단
		$("#bb1").click(function() {
			$(".c1").toggle();
		});
		// 도서관 안내 버튼
		$(".b2").hide(); //하단
		$("#a2").click(function() {
			$(".b2").toggle();
		});
		$(".c2").hide();
		$("#bb2").click(function() {
			$(".c2").toggle();
		});
		// 마이라이브러리
		$(".b3").hide(); //하단
		$("#a3").click(function() {
			$(".b3").toggle();
		});
	
	});
</script>
</head>
<body class="subpage">
<!-- Header -->
<header id="header">
	<nav class="left">
		<a href="#menu"><span>Menu</span></a>
	</nav>
	<a href="index.jsp" class="logo">Daye  Library</a>
	<nav class="right">
		<a href="#" class="button alt">Log in</a>
	</nav>
</header>

<!-- Menu -->
<nav id="menu">
	<ul class="links">
		<li><a href="index.jsp"  class="btn1">메인페이지</a></li>
		<li><a href="Search.jsp" class="btn1" id="search" >자료검색</a>
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
		
		
<!-- Page content -->
<div class="w3-content" style="max-width:1100px; margin-top: 100px;">
	<!-- 소제목 -->
	<div class="w3-content w3-center" style="margin-bottom: 70px;">
		<div style="display: inline-block; width: 500px; border-bottom: 1px double black;">
			<h1 style="margin-bottom: 10px;">스터디룸 소개</h1>
		</div>
	</div>
	<!-- 스터디룸 소개 -->
	<div class="w3-row w3-center" id="about" style="margin: 30px;">
		<div class="w3-row w3-center" style="height: 600px;">
			<div class="ttl">
				<div>
					<img class="w3-img read" src="resources/img/readingRoom_1.jpg">
				</div>
				<div class="SSul">
					<p class="w3-center w3-large ssul">작은방</p>
					<p class="w3-center w3-large ssul">사용인원 : 2 ~ 4인</p>
					<p class="ssul">이런저런 설명이 있구요<br>여기는 작은방 설명 페이지</p>
				</div>
			</div>
			<div class="ttl">
				<div>
					<img class="w3-img read" src="resources/img/readingRoom_2.jpg">
				</div>
				<div class="SSul">
					<p class="w3-center w3-large ssul">중간방</p>
					<p class="w3-center w3-large ssul">사용인원 : 4 ~ 6인</p>
					<p class="ssul">이런저런 설명이 있구요<br>여기는 중간방 설명 페이지</p>
				</div>
			</div>
			<div class="ttl">
				<div>
					<img class="w3-img read" src="resources/img/readingRoom_1.jpg">
				</div>
				<div class="SSul">
					<p class="w3-center w3-large ssul">큰방</p>
					<p class="w3-center w3-large ssul">사용인원 : 8 ~ 12인</p>
					<p class="ssul">이런저런 설명이 있구요<br>여기는 큰방 설명 페이지</p>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>