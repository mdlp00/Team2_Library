<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Main Page</title>
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
		// 로그인 된 상태인지 
		if(sid){
			$('#lbtn').html('LogOut');
			$('#lbtn').attr('id', 'lout');
		}
		// 로그인 or 로그아웃 버튼 클릭시
		$('.button').click(function(){
			var ttl = $(this).attr('id');
			var target = '';
			switch(ttl){
			case 'lbtn':
				target = 'login.ti';
				break;
			case 'lout':
				target = 'logoutProc.ti';
				alert('로그아웃 되었습니다.');
				break;
			}
			$(location).attr('href', 'MemberInfo/' + target);
		});
		
		// 스터디룸 이동
		$('#studyRoom').click(function(){
			$(location).attr('href', 'study/goStudy.ti');
		});
	});
</script>
<style type="text/css">
	.p {
		color : white;
	}
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="Etc/listbar.jsp" />

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
					<h3>Daye Library는</h3>
					<p>기존의 도서관들과는 Another Level의<br/>차별화된 고급짐을 보여 드립니다.</p>
				</div>
			</div>
			<div class="flex-item image fit round">
				<img src="/bo/resources/img/Main.jpg" alt="" />
			</div>
			<div class="flex-item right">
				<div>
					<h3>Daye Library는</h3>
					<p>여러 가지 편의 시설을 제공하며<br/>국내 최고 수준의 카페시설을 갖추고 있습니다.</p>
				</div>
				<div>
					<h3>Daye Library는</h3>
					<p>옥상 정원을 제공하며<br/>밤 시간대에는 별 관찰 프로그램도 진행합니다.</p>
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
					<h3>StudyRoom</h3>
					<p>Daye Library에서 서비스하는<br>고급 스터디룸 입니다.</p>
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
	<jsp:include page="Etc/footer.jsp" />
</body>
</html>