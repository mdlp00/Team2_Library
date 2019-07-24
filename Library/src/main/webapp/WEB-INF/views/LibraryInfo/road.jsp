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
			<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	body{
	 padding: 50px 200px 200px 400px;
	}
	.btn{
		color: white;
		text-decoration:none;
	}
	
	.btn1{
	
	font-size:1.7em;
	font-weight: bold;
	
	}
	.doc-title {
  
	width: 900px;
	height: 200px;
	}
	col {
    display: table-column;
	}
	
	.td1{
	width: 800px;
	height: 20px;
	text-decoration:none;
	}
	
	a{
	text-decoration:none;
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
			
		<!-- 층별안내-->
		<colgroup>
    	<col style="width: 20%;" class="col1">
    </colgroup>
    <table>
		<div class="doc-title"> <h2> [ 층별안내 ] </h2>
			<thead>
				<tr class="first">
			        <th class="first th1">위치(층)</th>
			        <th class="last th2">시설</th>
			     </tr>
			</thead>
			</table>
			<tbody>
			<table>
      <tr id="5F" class="first">
        <th class="first th1">5층</th>
        <td class="left last td1"><a style="color:#222;">종합자료2실</a></td>
      </tr>
      <tr id="4F">
        <th class="first th1">4층</th>
        <td class="left last td1"><a style="color:#222;">종합자료1실</a></td>
      </tr>
      <tr id="3F">
        <th class="first th1">3층</th>
        <td class="left last td1"><a  style="color:#222;">자율학습2실</a>, 관장실, 행정지원과, 정보자료과, 독서문화진흥과</td>
      </tr>
      <tr id="2F">
        <th class="first th1">2층</th>
        <td class="left last td1"><a style="color:#222;">자율학습1실</a>, <a  style="color:#222;">시청각실</a>, <a  style="color:#222;">세미나실</a>, <a  style="color:#222;">문화교실</a>,<astyle="color:#222;">서고</a>,<a  style="color:#222;">사물함</a></td>
      </tr>
      <tr id="1F">
        <th class="first th1">1층</th>
        <td class="left last td1"><a  style="color:#222;">어린이실</a>, <a  style="color:#222;">도서반납함</a>, 북카페, 안내실 </td>
      </tr>
      <tr id="B1">
        <th class="first th1">지하</th>
        <td class="left last td1"><a  style="color:#222;">식당/매점</a>, 보일러실, 서고 </td>
      </tr>
    </tbody>
		</div>
		</table>
	
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>