<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Generic - Intensify by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/bo/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="/bo/resources/css/w3.css" />
<script type="text/javascript" src="/bo/resources/js/jquery-3.4.1.min.js"></script>
	<!-- Scripts -->
			<script src="/bo/resources/assets/js/jquery.min.js"></script>
			<script src="/bo/resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="/bo/resources/assets/js/skel.min.js"></script>
			<script src="/bo/resources/assets/js/util.js"></script>
			<script src="/bo/resources/assets/js/main.js"></script>

<script type="text/javascript">
var sid = '${SID}';
$(function(){
	if(sid){
		$('#lbtn').html('LogOut');
		$('#lbtn').attr('id', 'lout');
	}		      
	
	$('.button').click(function(){
		var ttl = $(this).attr('id');
		var target = '';
		switch(ttl){
		case 'lbtn':
			target = 'login.bo';
			break;
		case 'lout':
			target = 'logoutProc.bo';
			alert('로그아웃 되었습니다.');
			break;
		}
			$(location).attr('href', 'MemberInfo/' + target);
	}); 
});

</script>
<style type="text/css">
	.p{
	color : white;
	}
</style>
</head>
<body>
	<%-- <jsp:include page="Etc/listbar.jsp"/> --%>
	<!-- Header -->
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a> 
		</nav>
		<a href="index.jsp" class="logo">Daye Library</a>
		<nav class="right">
			<c:if test="${not empty SID}">
			<h4 style='display:inline'>${SID} 님</h4>
			</c:if>
			<a id="lbtn" class="button alt">Login</a>
		</nav>
	</header>

	<!-- Banner -->
	<section id="banner" style="background-image:url('/bo/resources/img/MainP.jpg');">
		<div class="content p" style="font-weight: bold;" >
			<div style="font-weight: bold;">
			<h1 style="color: #11CFE5;">Live always in the best company when you read</h1>
				<p>독서할 때 당신은 항상<br>가장 좋은 친구와 함께 있다.</p>
			<ul class="actions">
				<li><a href="#one" class="button scrolly">Library Guide Start</a></li>
			</ul>
			</div>
		</div>
	</section>

	<!-- One -->
	<section id="one" class="wrapper">
		<div class="inner flex flex-3">
			<div class="flex-item left">
				<div>
					<h3>Daye Library는</h3>
					<p>창립자이신 안다예 선생님의 의지를 받아<br/>올바른 지식과 진리를 전파하는 사명을 가지고 있는 도서관입니다.</p>
				</div>
				<div>
					<h3>맘을 열어라 머릴 비워라</h3>
					<p>불을 지펴라<br/>리리리 라라라</p>
				</div>
			</div>
			<div class="flex-item image fit round">
				<img src="/bo/resources/img/Main.jpg" alt="" />
			</div>
			<div class="flex-item right">
				<div>
					<h3>정답은 묻지 말고</h3>
					<p>그대로 받아들여<br/>느낌대로 가 ALRIGHT</p>
				</div>
				<div>
					<h3>하늘을 마주하고</h3>
					<p>두 손을 다 위로 저 위로 날뛰고 싶어 OH<br/>나나나나나 나나나나나</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Two -->
	<section id="two" class="wrapper style1 special">
		<div class="inner">
			<h2>WOW FANTASTIC BABY</h2>
			<figure>
			    <blockquote>
			        "DANCE (WOOWHOO)<br/>I WANNA DAN DAN DAN DAN DANCE"
			    </blockquote>
			    <footer>
			        <cite class="author">ChanKyu</cite>
			        <cite class="company">YANG HIDDEN</cite>
			    </footer>
			</figure>
		</div>
	</section>

	<!-- Three -->
	<section id="three" class="wrapper">
		<div class="inner flex flex-3">
			<div class="flex-item box">
				<div class="image fit">
					<img src="/bo/resources/img/studyL_2.jpg" alt="" />
				</div>
				<div class="content">
					<h3>Consequat</h3>
					<p>Placerat ornare. Pellentesque od sed euismod in, pharetra ltricies edarcu cas consequat.</p>
				</div>
			</div>
		 <div class="flex-item box">
				<div class="image fit">
					<img src="/bo/resources/img/studyM_1.jpg" alt="" />
				</div>
				<div class="content">
					<h3>Adipiscing</h3>
					<p>Morbi in sem quis dui placerat Pellentesque odio nisi, euismod pharetra lorem ipsum.</p>
				</div>
			</div>
			<div class="flex-item box">
				<div class="image fit">
					<img src="/bo/resources/img/studyS_2.jpg" alt="" />
				</div>
				<div class="content">
					<h3>Malesuada</h3>
					<p>Nam dui mi, tincidunt quis, accu an porttitor, facilisis luctus que metus vulputate sem magna.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<div class="inner">
			<h2>Get In Touch</h2>
			<ul class="actions">
				<li><span class="icon fa-phone"></span><a href="#">010-3762-3828</a></li>
				<li><span class="icon fa-envelope"></span><a href="#">ahnDaYe@increpas.com</a></li>
				<li><span class="icon fa-map-marker"></span>552, Siheung-daero, Gwanak-gu, Seoul</li>
			</ul>
		</div>
		<div class="copyright">
			&copy; Untitled. Design <a href="https://templated.co">TEMPLATED</a>. Images <a href="https://unsplash.com">Unsplash</a>.
		</div>
	</footer>

	

</body>
</html>