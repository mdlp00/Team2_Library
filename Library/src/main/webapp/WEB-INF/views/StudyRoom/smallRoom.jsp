<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Small Room</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w3.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	html, body {
		margin: 0px; 
		padding: 0px;
		overflow: visible;
	}
	body {font-family: "Times New Roman", Georgia, Serif; background-color: #f6f6f6;}
	h1 {
	  font-family: "Playfair Display";
	  letter-spacing: 5px;
	}
	input[type="button"] {
		border: 1px solid #767d85;
		color: #808080;
		background-color: white;
		padding: 0px;
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		border-radius: 4px;
		cursor: pointer;
		font-family: "Montserrat", sans-serif;
		line-height: 3.5em;
		text-decoration: none;
		white-space: nowrap;
		text-transform: uppercase;
		text-align: center;
		display: inline-block;
		width: 50px;
		height: 50px;
	}
	input[type="button"]:hover {
		background-color: #f78a76;
		color: white;
	}
	
	#small-header {
		text-align: center;	font-size: 26px; margin: 10px 0px; color: black; font-family: "Montserrat", sans-serif;
	}
	#small-neck {
		margin: 0px; padding: 0px; list-style: none;
	}

	.times_time {
		text-align: center; display: inline-block; width: 50px; height: 50px;
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
	.togColor{
		background-color: #6ec4c1 !important;
		color: white !important;
	}
	.disColor {
		background-color: #767d85;
		color: white;
	}
	.li_border {
		padding: 10px 0px;
		border-top: 1px solid #ebebeb;
	}
	.small_bar {
		background-color: #f6755e;
		width: 20px;
		height: 4px;
		margin-bottom: 5px;
	}
	.murry {
		color: black;
		font-size: 16px;
	}
	.icon_nae {
		font-size: 10pt;
		height: 100%;
		width: 100%;
	}
	.icon_img {
		height: 100%;
		width: auto;
	}
	.co101 {
		color: rgb(101, 101, 101);
	}
	.spam {
		margin: 5px 15px 5px 5px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// [2] 예약 설정
		// 날짜 선택 창 띄우기
		$('#reserve').click(function(){
			$('#reserveForm').fadeIn(500);
		});
		// 날짜 선택시 비동기 처리
		$('#sel_day').change(function(){
			var date = $(this).val();
			$.ajax({
				url: "dateCheck.bo",
				type: "POST",
				dataType: "json",
				data: {
					"roomCode": 1,
					"date": date
				},
				success: function(data){
					$('.times_time').attr('disabled', false);
					$('.times_time').attr('class', 'times_time');
					
					var size = data.list.length;
					
					for(var i = 0; i < size; i++){
						// 받아온 데이터 확인
						var st = data.list[i].startTime;
						var et = data.list[i].endTime;
						// 앞의 두자리만 가져오기
						var start = st.substring(0, 2);
						var end = et.substring(0, 2);
						// 버튼 선택 못하게 처리
						for(var j = start; j < end; j++){
							$('#t'+j).attr('disabled', true);
							$('#t'+j).addClass('disColor');
						}
					}
				},
				error: function(){
					alert('### ajax 처리 실패 ###');
				}
			});
			
			$('#startDate').val(date);
		});
		// 시간 선택 창 띄우기
		$('#sel_day').change(function(){
			$('#times').fadeIn(500);
		});
		// 시간 선택시 색 변하는 기능
		$(".times_time").click(function(){
			$(this).toggleClass('togColor');
			$('#reserve_button').fadeIn(500);
			var sck = $(this).next().prop('checked');
			if(sck == true){
				$(this).next().prop('checked', false);
			} else {
				$(this).next().prop('checked', true);
			}
		});
		// 예약하기 버튼 클릭 시
		$('#reserve_button').click(function(){
			var sid = '${SID}';
			if(!sid) {
				alert('로그인을 한 후에 사용 가능한 서비스입니다.');
				return;
			}
			
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	<!-- Page content -->
	<div class="w3-content" style="max-width:1100px; margin-top: 10px; padding-bottom: 1000px;">
		<!-- 상단 사진 -->
		<div class="w3-row" style="height: 500px;">
			<img class="w3-img" src="../resources/img/studyS_1.jpg" style="height: 100%; width: 100%;">
		</div>
		<!-- 소제목 -->
		<div class="w3-row w3-center" style="margin: 20px 0px 70px;">
			<div style="display: inline-block; width: 500px;">
				<h1 style="margin-bottom: 10px;">D.L. the Small Room</h1>
				<p style="color: gray;">3명 ~ 4명 정도의 사람들이 넉넉하고 아늑하게 사용할 수 있는 공간</p>
			</div>
		</div>
		<!-- 스터디룸 소개 -->
		<div class="w3-row" id="about">
			<!-- 소개글 부분 -->
			<div class="w3-col m9" style="height: 600px;">
				<div class="ttl">
					<div>
						<img class="w3-img read" src="../resources/img/studyS_2.jpg">
					</div>
					<div class="SSul">
						<h1 class="w3-xxlarge ssul"><b>the Small Room<br>작은방</b></h1>
						<div style="background-color: #f6755e; width: 20px; height: 4px; margin-bottom: 15px;"></div>
						<p class="ssul ftnbg" style="color: black;">이 곳은 Daye Library가 자랑하는 지성과 토론의 공간<br> <strong>작은방</strong> 입니다.</p>
						<div style="height: 20px;"><p></p></div>
						<p>공간 내 무료로 제공되는 coffee, tea가 있습니다.<br>스터디 및 회의하기에 조용하고 쾌적한 공간입니다.</p>
						<div style="height: 10px;"><p></p></div>
						<p style="margin-bottom: 5px;"><strong class="ftnbg murry">이용 시간</strong></p>
						<div class="small_bar"></div>
						<ul>
							<li class="li_bt"><span class="ftnbg">오전 9시부터 오후 5시 까지</span></li>
						</ul>
						<div style="height: 20px;"><p></p></div>
						<p style="margin-bottom: 5px;"><strong class="ftnbg murry">시설 안내</strong></p>
						<div class="small_bar"></div>
						<ol>
							<li class="li_bt"><span class="ftnbg">무료 에디오피아 산 원두커피, Tea</span></li>
							<li class="li_bt"><span class="ftnbg">초고속 5G Wifi</span></li>
							<li class="li_bt"><span class="ftnbg">냉난방기</span></li>
							<li class="li_bt"><span class="ftnbg">충분한 콘센트 (인당 평균 3개)</span></li>
							<li class="li_bt"><span class="ftnbg">얼음 정수기</span></li>
						</ol>
						<div style="height: 20px;"><p></p></div>
						<p style="margin-bottom: 5px;"><strong class="ftnbg murry">예약시 주의 사항</strong></p>
						<div class="small_bar"></div>
						<ul>
							<li class="li_bt"><span class="ftnbg">입실, 퇴실 시간을 준수해주세요</span></li>
							<li class="li_bt"><span class="ftnbg">다음 사용자를 위해, 퇴실 5분전 가벼운 뒷정리를 해주세요</span></li>
							<li class="li_bt"><span class="ftnbg">사용 후 다음 사용자가 없다면 불을 꺼주세요</span></li>
							<li class="li_bt"><span class="ftnbg">음식물은 도서관 내 카페테리아를 이용해주세요</span></li>
						</ul>
						<div style="height: 20px;"><p></p></div>
						<p style="margin-bottom: 5px;"><strong class="ftnbg murry">환불 규정 안내</strong></p>
						<div class="small_bar"></div>
						<ul>
							<li class="li_bt"><span class="ftnbg">이용 7일 전</span><span class="ftnbg co101">총 금액의 100% 환불</span></li>
							<li class="li_bt"><span class="ftnbg">이용 3일 전</span><span class="ftnbg co101">총 금액의 50% 환불</span></li>
							<li class="li_bt"><span class="ftnbg">이용 1일 전</span><span class="ftnbg co101">총 금액의 10% 환불</span></li>
							<li class="li_bt"><span class="ftnbg">이용 당일</span><span class="ftnbg co101">환불 불가</span></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 캘린더 및 예약 부분 -->
			<div class="w3-col m3">
				<div class="w3-content w3-padding cal_ttl">
					<div class="w3-row ftnbg">
						<p id="small-header">작 은 방</p>
						<ul id="small-neck">
							<li class="li_border"><span class="spam">예약 시간 :</span><span>1시간 단위</span></li>
							<li class="li_border"><span class="spam">예약 인원 :</span><span>최소 2명 ~ 최대 4명</span></li>
						</ul>
						<div class="li_border">
							<div style="height: 40px;">
								<img class="icon_img" src="../resources/img/icon/desk_chair.jpg">
								<span class="icon_nae">의자 / 테이블</span>
							</div>
							<div style="height: 40px;">
								<img class="icon_img" src="../resources/img/icon/wifi.JPG">
								<span class="icon_nae">인터넷 / Wifi</span>
							</div>
							<div style="height: 40px;">
								<img class="icon_img" src="../resources/img/icon/toilet.JPG">
								<span class="icon_nae">내부 화장실</span>
							</div>
							<div style="height: 40px;">
								<img class="icon_img" src="../resources/img/icon/noSmoking.jpg">
								<span class="icon_nae">금연</span>
							</div>
						</div>
						<div class="li_border"><p style="margin: 0px;"></p></div>
					</div>
					<div class="w3-row">
						<div class="w3-padding w3-center ftnbg" id="reserve" style="background-color: #f6755e; color: white;">시간 단위 예약하기</div>
					</div>
					<div class="w3-row w3-margin-top w3-margin-bottom" id="reserveForm" style="display: none;">
						<select class="w3-center ftnbg" name="sel_day" id="sel_day" style="background-color: white;">
							<option>예약 가능한 날짜 선택</option>
							<c:forEach var="data" items="${DATE}">
								<option class="w3-center" value="${data}">${data}</option>
							</c:forEach>
						</select>
						<div class="w3-row w3-margin-top" id="times" style="display: none;">
							<!-- form -->
							<form method="POST" action="reserveDate.bo" id="frm" name="frm">
								<input type="hidden" id="roomCode" name="roomCode" value="1">
								<input type="hidden" id="startDate" name="startDate">
								<div class="times_wrap">
									<input type="button" class="times_time" id="t09" value="09:00">
									<input type="checkbox" name="startTime" value="09">
									<input type="button" class="times_time" id="t10" value="10:00">
									<input type="checkbox" name="startTime" value="10">
									<input type="button" class="times_time" id="t11" value="11:00">
									<input type="checkbox" name="startTime" value="11">
									<input type="button" class="times_time" id="t12" value="12:00">
									<input type="checkbox" name="startTime" value="12">
									<input type="button" class="times_time" id="t13" value="1:00">
									<input type="checkbox" name="startTime" value="13">
									<input type="button" class="times_time" id="t14" value="2:00">
									<input type="checkbox" name="startTime" value="14">
									<input type="button" class="times_time" id="t15" value="3:00">
									<input type="checkbox" name="startTime" value="15">
									<input type="button" class="times_time" id="t16" value="4:00">
									<input type="checkbox" name="startTime" value="16">
									<input type="button" class="times_time" id="t17" value="5:00">
									<input type="checkbox" name="startTime" value="17">
								</div>
							</form>
							<div class="w3-row" style="border-top: 1px soild #ebebeb; padding-top: 15px; display: none;" id="reserve_button">
								<div class="w3-col w3-button w3-center w3-orange ftnbg">예약 하기</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>