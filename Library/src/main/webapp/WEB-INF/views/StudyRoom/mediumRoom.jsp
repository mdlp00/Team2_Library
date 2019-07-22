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

	body {font-family: "Times New Roman", Georgia, Serif; background-color: #f6f6f6;}
	h1, h2, h3, h4, h5, h6 {
	  font-family: "Playfair Display";
	  letter-spacing: 5px;
	}
	
	#myfooter {
	    bottom : 0 !important;
	    width : 100% !important;
	    height : 150px !important;
	    float : left !important;
	    font-size : 12px !important;
	    border-top : 2px solid gray !important;
	}
	#dimg {
		height : 100% !important;
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
		margin: 15px 0px; padding: 0px;
	}
	.ttl {
		margin: 0px; padding: 0px; border: 0px; display: inline-block;
	}
	.read {
		width: 750px; height: 480px;
	}
	.divimg{
		height : 100% !important;
		width : 150px !important;
		float : left !important;
		margin-left : 10% !important;
	}
	.divtext{
		height : 100% !important;
		float : left !important;
		padding-left :10px !important;
		padding-top : 1.5% !important;
		line-height : 2.8em !important;
	}
	.divinline{
		display : inline-block !important;
		height : 100% !important;
	}
	.s1{
		display : block !important;
	}
	.ftnbg {
		font-family: NanumBarunGothicBold;
	}
	.cal_ttl{
		background-color: white;
	}
	.li_bt {
		margin: 5px 0px;
	}
	.times_wrap {
		width: 100%;
		height: 70px;
		overflow-x: scroll;
		white-space: nowrap;
	}
	.times_time {
		text-align: center;
		display: inline-block;
		border: 1px solid #dee1e3;
		width: 50px;
		height: 50px;
		line-height: 47px;
		background-color: white;
		color: black;
	}
	.togColor{
		background-color: #6ec4c1;
		color: white;
	}
	.li_border {
		padding: 10px 0px;
		border-top: 1px solid #ebebeb;
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
		
		$('#reserve').click(function(){
			$('#reserveForm').fadeIn(500);
		});
		$('#sel_day').change(function(){
			$('#times').fadeIn(500);
		});
		
		$(".times_time").click(function(){
			$(this).toggleClass('togColor');
			$('#reserve_button').fadeIn(500);
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
<div class="w3-content" style="max-width:1100px; margin-top: 10px;">
	<!-- 상단 사진 -->
	<div class="w3-row" style="height: 500px;">
		<img class="w3-img" src="resources/img/studyM_1.jpg" style="height: 100%; width: 100%;">
	</div>
	<!-- 소제목 -->
	<div class="w3-row w3-center" style="margin: 20px 0px 70px;">
		<div style="display: inline-block; width: 500px;">
			<h1 style="margin-bottom: 10px;">D.L. the Medium Room</h1>
			<p style="color: gray;">4명 ~ 8명 정도의 사람들이 편안하고 여유롭게 사용할 수 있는 공간</p>
		</div>
	</div>
	<!-- 스터디룸 소개 -->
	<div class="w3-row" id="about">
		<!-- 소개글 부분 -->
		<div class="w3-col m9" style="height: 600px;">
			<div class="ttl">
				<div>
					<img class="w3-img read" src="resources/img/studyM_2.jpg">
				</div>
				<div class="SSul">
					<h1 class="w3-xxlarge ssul"><b>the Medium Room<br>중간방</b></h1>
					<div style="background-color: #f6755e; width: 20px; height: 4px; margin-bottom: 15px;"></div>
					<p class="ssul ftnbg" style="color: black;">이 곳은 Daye Library가 선사하는 창의와 발상의 공간<br> <strong>중간방</strong> 입니다.</p>
					<div style="height: 20px;"><p></p></div>
					<p>공간 내 무료로 제공되는 coffee, tea가 있습니다.<br>스터디 및 회의하기에 쾌적하고 깔끔한 공간입니다.</p>
					<div style="height: 10px;"><p></p></div>
					<p style="margin-bottom: 5px;"><strong class="ftnbg" style="color: black; font-size: 16px;">이용 시간</strong></p>
					<div style="background-color: #f6755e; width: 20px; height: 4px; margin-bottom: 5px;"></div>
					<ul>
						<li class="li_bt"><span class="ftnbg">오전 9시부터 오후 5시 까지</span></li>
					</ul>
					<div style="height: 20px;"><p></p></div>
					<p style="margin-bottom: 5px;"><strong class="ftnbg" style="color: black; font-size: 16px;">시설 안내</strong></p>
					<div style="background-color: #f6755e; width: 20px; height: 4px; margin-bottom: 5px;"></div>
					<ol>
						<li class="li_bt"><span class="ftnbg">무료 에디오피아 산 원두커피, Tea</span></li>
						<li class="li_bt"><span class="ftnbg">초고속 5G Wifi</span></li>
						<li class="li_bt"><span class="ftnbg">냉난방기</span></li>
						<li class="li_bt"><span class="ftnbg">충분한 콘센트 (인당 평균 3개)</span></li>
						<li class="li_bt"><span class="ftnbg">얼음 정수기</span></li>
					</ol>
					<div style="height: 20px;"><p></p></div>
					<p style="margin-bottom: 5px;"><strong class="ftnbg" style="color: black; font-size: 16px;">예약시 주의 사항</strong></p>
					<div style="background-color: #f6755e; width: 20px; height: 4px; margin-bottom: 5px;"></div>
					<ul>
						<li class="li_bt"><span class="ftnbg">입실, 퇴실 시간을 준수해주세요</span></li>
						<li class="li_bt"><span class="ftnbg">다음 사용자를 위해, 퇴실 5분전 가벼운 뒷정리를 해주세요</span></li>
						<li class="li_bt"><span class="ftnbg">사용 후 다음 사용자가 없다면 불을 꺼주세요</span></li>
						<li class="li_bt"><span class="ftnbg">음식물은 도서관 내 카페테리아를 이용해주세요</span></li>
					</ul>
					<div style="height: 20px;"><p></p></div>
					<p style="margin-bottom: 5px;"><strong class="ftnbg" style="color: black; font-size: 16px;">환불 규정 안내</strong></p>
					<div style="background-color: #f6755e; width: 20px; height: 4px; margin-bottom: 5px;"></div>
					<ul>
						<li class="li_bt"><span class="ftnbg">이용 7일 전</span><span class="ftnbg" style="color: rgb(101, 101, 101);">총 금액의 100% 환불</span></li>
						<li class="li_bt"><span class="ftnbg">이용 3일 전</span><span class="ftnbg" style="color: rgb(101, 101, 101);">총 금액의 50% 환불</span></li>
						<li class="li_bt"><span class="ftnbg">이용 1일 전</span><span class="ftnbg" style="color: rgb(101, 101, 101);">총 금액의 10% 환불</span></li>
						<li class="li_bt"><span class="ftnbg">이용 당일</span><span class="ftnbg" style="color: rgb(101, 101, 101);">환불 불가</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 캘린더 및 예약 부분 -->
		<div class="w3-col m3">
			<div class="w3-content w3-padding cal_ttl">
				<div class="w3-row ftnbg">
					<p style="text-align: center; font-size: 26px; margin: 10px 0px; color: black;">작 은 방</p>
					<ul style="margin: 0px 0px 10px 0px; padding: 0px; list-style: none;">
						<li class="li_border"><span style="margin: 5px 15px 5px 5px;">예약 시간 :</span><span>1시간 단위</span></li>
						<li class="li_border"><span style="margin: 5px 15px 5px 5px;">예약 인원 :</span><span>최소 4명 ~ 최대 8명</span></li>
					</ul>
					<div class="li_border">
						<div style="height: 40px;">
							<img style="height: 100%; width: auto;" src="resources/img/desk_chair.jpg">
							<span style="font-size: 10pt; height: 100%; width: 100%;">의자 / 테이블</span>
						</div>
						<div style="height: 40px;">
							<img style="height: 100%; width: auto;" src="resources/img/wifi.JPG">
							<span style="font-size: 10pt; height: 100%; width: 100%;">인터넷 / Wifi</span>
						</div>
						<div style="height: 40px;">
							<img style="height: 100%; width: auto;" src="resources/img/toilet.JPG">
							<span style="font-size: 10pt; height: 100%; width: 100%;">내부 화장실</span>
						</div>
						<div style="height: 40px;">
							<img style="height: 100%; width: auto;" src="resources/img/noSmoking.JPG">
							<span style="font-size: 10pt; height: 100%; width: 100%;">금연</span>
						</div>
					</div>
					<div class="li_border"><p style="margin: 0px;"></p></div>
				</div>
				<div class="w3-row">
					<div class="w3-padding w3-center ftnbg" id="reserve" style="background-color: #f6755e; color: white;">시간 단위 예약하기</div>
				</div>
				<div class="w3-row w3-margin-top w3-margin-bottom" id="reserveForm" style="display: none;">
					<select class="w3-center ftnbg" id="sel_day" style="background-color: white;">
						<option>예약 가능한 날짜 선택</option>
						<option>2019 / 07 / 19</option>
						<option>2019 / 07 / 20</option>
						<option>2019 / 07 / 21</option>
						<option>2019 / 07 / 22</option>
						<option>2019 / 07 / 23</option>
						<option>2019 / 07 / 24</option>
						<option>2019 / 07 / 25</option>
						<option>2019 / 07 / 26</option>
						<c:forEach var="data" items="${DATE}">
							<option value="${data}">{data}</option>
						</c:forEach>
					</select>
					<div class="w3-row w3-margin-top" id="times" style="display: none;">
						<div class="times_wrap">
							<div class="times_time">9:00</div>
							<div class="times_time">10:00</div>
							<div class="times_time">11:00</div>
							<div class="times_time">12:00</div>
							<div class="times_time">1:00</div>
							<div class="times_time">2:00</div>
							<div class="times_time">3:00</div>
							<div class="times_time">4:00</div>
							<div class="times_time">5:00</div>
						</div>
						<div class="w3-row" style="border-top: 1px soild #ebebeb; padding-top: 15px; display: none;" id="reserve_button">
							<div class="w3-col w3-button w3-center w3-orange ftnbg">예약 하기</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<!-- Footer 
	<div id="myfooter">
		<div class="divimg divinline">
			<img src="resources/img/logo.png" id="dimg" />
		</div>
		<div class="divtext divinline">
			<span class="s1"><b>우편번호 : </b>서울특별시 관악구 서울특별시 관악구 조원동 1655-24</span>
			<span class="s1"><b>대표전화 : </b>02-869-1080</span>
			<span class="s1">Copyright ⓒ 2019 Daye Public Library. All Rights Reserved.</span>
		</div>
	</div>
	-->
</html>