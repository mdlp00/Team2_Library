<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>List Bar Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.4.1.min.js" ></script>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	.btn {
		color: white;
		text-decoration:none;
	}
	.btn1 {
		font-size:1.7em;
		font-weight: bold;
	}
	.search1 {
		text-align: left;
	}
	.b1 {
		text-align: left;
	}
	.c1 {
		text-align: left;
	}
	.b2 {
		text-align: left;
	}
	.b3 {
		text-align: left;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var sid = '${SID}';
		//[1] 기본값 설정
		// 자료검색 버튼
		$(".search1").hide(); //하단
		$("#search").click(function() {
			location.href="${pageContext.request.contextPath}/book/bookSearchView.bo";
		});
		// 열린공간 버튼
		$(".b1").hide(); //하단
		$("#a1").click(function() {
			$(".b1").toggle();
			
			// 공지사항
			$('#no1').click(function(){
				location.href="${pageContext.request.contextPath}/LibraryInfo/notice.bo";
			});
			// 자주하는질문
			$('#no2').click(function(){
				location.href="${pageContext.request.contextPath}/LibraryInfo/qnA.bo";
			});
			// 좌석예약
			$('#no3').click(function(){
				location.href="${pageContext.request.contextPath}/StudyRoom/goStudy.bo";
			});
		});
		$(".c1").hide(); //하단
		$("#bb1").click(function() {
			$(".c1").toggle();
		});
	  	 // 도서관 안내 버튼
		$(".b2").hide(); //하단
		$("#a2").click(function() {
			$(".b2").toggle();
			//이용시간 및 휴관일
			$('#Guide2').click(function(){
				location.href="${pageContext.request.contextPath}/LibraryInfo/closeDay.bo";
			});
			//회원가입안내
			$('#Guide3').click(function(){
				location.href="${pageContext.request.contextPath}/LibraryInfo/joinGide.bo";
			});
			//시설이용안내
			$('#Guide4').click(function(){
				location.href="${pageContext.request.contextPath}/LibraryInfo/road.bo";
			});
			//오시는길
			$('#Guide6').click(function(){
				location.href="${pageContext.request.contextPath}/LibraryInfo/roadFind.bo";	
			});
		});
		// 마이라이브러리
		$(".b3").hide(); //하단
		$("#a3").click(function() {
			if(sid){
				$(".b3").toggle();
				//예약현황
				if(sid == 'manager01'){
					$('#myInfo1').click(function(){
						location.href="${pageContext.request.contextPath}/ManagerPage/reservationList.bo";
					});					
				}else{
					$('#myInfo1').click(function(){
						location.href="${pageContext.request.contextPath}/bookinfo/goBookCh.bo";
					});
				}
				//대출현황
				if(sid == 'manager01'){
					$('#myInfo2').click(function(){
						location.href="${pageContext.request.contextPath}/ManagerPage/rentView.bo";
					});
				}else{
					$('#myInfo2').click(function(){
						location.href="${pageContext.request.contextPath}/bookinfo/goLoans.bo";
					});
				}
				//스터디룸 예약 확인
				$('#myInfo3').click(function(){
					location.href="${pageContext.request.contextPath}/MemberInfo/goSRR.bo";
				});
				//회원정보
				$('#myInfo4').click(function(){
					location.href="${pageContext.request.contextPath}/MemberInfo/mypage.bo";
				});
			} else {
				alert("로그인이 필요한 서비스입니다.");
			}
		});
		
		// [2] 로그인 처리
		// 로그인 상태시 변화
		if(sid){
			$('#lin').html('Log Out');
			$('#lin').attr('id', 'lout');
		}
		// 로그인 버튼 클릭시
		$('#lin').click(function(){
			$(location).attr('href', '${pageContext.request.contextPath}/MemberInfo/login.bo');
		});
		
		// 매니저 버튼 로그인시
		$('#mlin').click(function(){
			$(location).attr('href', '${pageContext.request.contextPath}/ManagerPage/loginForm.bo');
		});		
		
		// 로그아웃 버튼 클릭시
		$('#lout').click(function(){
			alert('로그아웃 되었습니다.');
			$(location).attr('href', '${pageContext.request.contextPath}/MemberInfo/logoutProc.bo' );
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
		<a href="${pageContext.request.contextPath}/StudyRoom/goMain.bo" class="logo">Daye Library</a>
		<nav class="right">
			<c:if test="${not empty SID && SID ne 'manager01'}">
				<h4 style='display:inline'>${SID} 님</h4>
			</c:if>
			<c:if test="${SID eq 'manager01'}">
				<h4 style='display:inline; color : red;'>${SID} 님</h4>
			</c:if>
			<c:if test="${empty SID}">
			<a class="button alt" id="mlin">Manager Log In</a>
			</c:if>
			<a class="button alt" id="lin">Log In</a>
		</nav>
	</header>

	<!-- Menu -->
	<nav id="menu">
		<ul class="links">
			<li><a href="${pageContext.request.contextPath}/StudyRoom/goMain.bo" class="btn1">메인페이지</a></li>
			<li><a href="#" class="btn1" id="search">자료검색</a>
			<li><a href="#" class="btn1" id="a1">열린공간</a>
				<ul>
					<li class="b1"><a href="#" class="w3-button btn" id="no1">공지사항</a></li>
					<li class="b1"><a href="#" class="w3-button btn" id="no2">자주하는 질문</a></li>
					<li class="b1"><a href="#" class="w3-button btn" id="no3">스터디룸</a>

					</li>
				</ul>
			</li>
			<li><a href="#" class="btn1" id="a2">도서관안내</a></li>
			<ul>
				<li class="b2"><a href="#" class="w3-button btn" id="Guide2">이용시간 및 휴관일</a></li>
				<li class="b2"><a href="#" class="w3-button btn" id="Guide3">회원가입 안내</a></li>
				<li class="b2"><a href="#" class="w3-button btn" id="Guide4">시설이용 안내</a></li>
				<li class="b2"><a href="#" class="w3-button btn" id="Guide6">오시는길</a></li>
				
			</ul>
			<li><a href="#" class="btn1" id="a3">마이라이브러리</a></li>
			<ul>
				<li class="b3"><a href="#" class="w3-button btn" id="myInfo1">예약현황</a></li>
				<li class="b3"><a href="#" class="w3-button btn" id="myInfo2">대출현황</a></li>
			<c:if test="${SID ne 'manager01'}">
				<li class="b3"><a href="#" class="w3-button btn" id="myInfo3">스터디룸 예약 확인</a></li>
				<li class="b3"><a href="#" class="w3-button btn" id="myInfo4">회원정보</a></li>
			</c:if>
			</ul>
		</ul>
		<ul class="actions vertical">
			<a id="lbtn" class="button alt">Logout</a>
		</ul>
	</nav>
</body>
</html>