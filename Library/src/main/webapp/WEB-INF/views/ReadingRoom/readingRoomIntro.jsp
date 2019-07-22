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

	.btn{
		color: white;
		text-decoration:none;
	}
	
	.btn1{
	
	font-size:1.7em;
	font-weight: bold;
	
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
			<header id="header">
							<nav class="left">
								<a href="#menu"><span>Menu</span></a>
							</nav>
							<a href="index.html" class="logo"> Daye Library</a>
							<nav class="right">
								<a href="#" class="button alt">Log in</a>
							</nav>
			</header>
		<!-- Header -->
			<header id="header">
				<nav class="left">
					<a href="#menu"><span>Menu</span></a>
				</nav>
				<a href="index.html" class="logo"> Daye  Library</a>
				<nav class="right">
					<a href="#" class="button alt">Log in</a>
				</nav>
			</header>

		<!-- Menu -->
			<nav id="menu">
				<ul class="links">
					<li><a href="#"  class="btn1"> 메인페이지</a>
					</li>
	
					<li><a href="#" class="btn1" id="search" >자료검색</a>
						<div class="subMenu">
							<ul>
								 <li class= "search1" > <a href="#" class="w3-button btn " >주제별 자료검색</a></li>
								 <li class= "search1"> <a href="#" class="w3-button btn" >희망도서신청</a></li>
								 <li class= "search1"> <a href="#" class="w3-button btn" >대출 베스트</a></li>
							</ul>
						</div>

					<li><a href="#" class="btn1" id="a1">열린공간</a>
							<ul>
								 <li class= "b1"> <a href="#" class="w3-button btn" >공지사항</a></li>
								 <li class= "b1"> <a href="#" class="w3-button btn" >자주하는 질문</a></li>
								 <li class= "b1" id="bb1"> <a href="#" class="w3-button btn" >좌석예약</a>
									<ul>
										 <li class= "c1" > <a href="#" class="w3-button btn" >좌석예약</a></li>
										 <li class= "c1"> <a href="#" class="w3-button btn" >디지털 자료실 좌석예약</a></li>
										 <li class= "c1"> <a href="#" class="w3-button btn" >열람실좌석 예약현황</a></li>
									</ul>
								 </li>
							</ul>
					</li>
					<li><a href="#" class="btn1" id="a2">도서관안내</a></li>
							<ul>
								 <li class= "b2"> <a href="#" class="w3-button btn" >도서관현황</a></li>
								 <li class= "b2" id="bb2"> <a href="#" class="w3-button btn" >이용안내</a></li>
								 	 <ul>
										 <li class= "c2"> <a href="#" class="w3-button btn" >이용시간 및 휴관일</a></li>
										 <li class= "c2"> <a href="#" class="w3-button btn" >회원가입 안내</a></li>
										 <li class= "c2"> <a href="#" class="w3-button btn" >시설이용 안내</a></li>
										 <li class= "c2"> <a href="#" class="w3-button btn" >자료이용 안내</a></li>
									 	 <li class= "c2"> <a href="#" class="w3-button btn" >오시는길</a></li>
									</ul>
							</ul>
				
					<li><a href="#" class="btn1" id="a3">마이라이브러리</a></li>
						 <ul>
							 		<li class= "b3"> <a href="#" class="w3-button btn" >내서재</a></li>
									<li class= "b3" > <a href="#" class="w3-button btn" >대출조회 및 연기</a></li>
									<li class= "b3"> <a href="#" class="w3-button btn" >대출예약확인 및 취소</a></li>
									 <li class= "b3"> <a href="#" class="w3-button btn" >회원정보</a></li>
							</ul>
							
						</ul>
					
				<ul class="actions vertical">
					<li><a href="#" class="button fit">Login</a></li>
				</ul>
			</nav>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
			
		<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

  <!-- 첫번째 소개 -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="img/heri1.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" style = "width : 600px; height : 350px;">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">제 1열람실</h1><br>
      <h5 class="w3-center">5층 구석에 있음..</h5>
      <p class="w3-large">이런저런 설명이 있구요.. 여기는 열람실 설명 페이지</p>
      <p class="w3-large w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
  
  <hr>
  <!-- 두번째 소개 -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="img/heri2.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" style = "width : 600px; height : 350px;">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">제 2열람실</h1><br>
      <h5 class="w3-center">4층 저쪽에 있음..</h5>
      <p class="w3-large">여기도 이런저런 설명이 있구요.. 여기는 열람실 설명 페이지</p>
      <p class="w3-large w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
  
    <hr>
  <!-- 세번째 소개 -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="img/heri3.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" style = "width : 600px; height : 350px;">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">제 3열람실</h1><br>
      <h5 class="w3-center">1층 저쪽에 있음..</h5>
      <p class="w3-large">여기도 이런저런 설명이 있구요.. 여기는 열람실 설명 페이지</p>
      <p class="w3-large w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
   
</div>		
			

	</body>
</html>