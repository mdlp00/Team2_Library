<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>StudyRoom 소개</title>
	<!-- Css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3-colors-win8.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	body {
		ont-family: "Times New Roman", Georgia, Serif;
	}
	h1 {
	  font-family: "Playfair Display";
	  letter-spacing: 5px;
	}

	.divInline {
		display: inline-block;
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
		padding-top: 10px;
	}
	.ssul {
		margin: 0px; padding: 0px;
	}
	.ttl {
		margin: 0px 10px; padding: 3px; border: 0px; display: inline-block;
	}
	.ttl:hover {
		border: 3px solid #f6755e;
		border-radius: 4px;
	}
	.ttl:action {
		box-shadow: 0px 0px 5px 3px gray inset;
		background-color: #6ec4c1;
		border-color: #6ec4c1;
	}
	.read {
		width: 300px; height: 250px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// 스터디룸 이동
		// 작은방
		$('#smallRoom').click(function(){
			$(location).attr('href', 'goSmall.bo');
		})
		// 중간방
		$('#mediumRoom').click(function(){
			$(location).attr('href', 'goMedium.bo');
		})
		// 큰방
		$('#bigRoom').click(function(){
			$(location).attr('href', 'goBig.bo');
		})
	});
</script>
</head>
<body class="subpage">
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- Page content -->
	<div class="w3-content" style="max-width:1100px; margin-top: 100px;">
		<!-- 소제목 -->
		<div class="w3-content w3-center" style="margin-bottom: 70px;">
			<div class="divInline" style="width: 500px; border-bottom: 1px double black;">
				<h1 style="margin-bottom: 10px;">스터디룸 소개</h1>
			</div>
		</div>
		<!-- 스터디룸 소개 -->
		<div class="w3-row w3-center" id="about" style="margin: 30px;">
			<div class="w3-row w3-center" style="height: 600px;">
				<div class="ttl" id="smallRoom">
					<div>
						<img class="w3-img read" src="../resources/img/studyS_1.jpg">
					</div>
					<div class="SSul">
						<p class="w3-center w3-large ssul">작은방</p>
						<p class="w3-center w3-large ssul">사용인원 : 2 ~ 4인</p>
						<p class="ssul">소수의 인원이 프라이빗하게<br>사용하기 좋은 공간입니다.</p>
					</div>
				</div>
				<div class="ttl" id="mediumRoom">
					<div>
						<img class="w3-img read" src="../resources/img/studyM_1.jpg">
					</div>
					<div class="SSul">
						<p class="w3-center w3-large ssul">중간방</p>
						<p class="w3-center w3-large ssul">사용인원 : 4 ~ 6인</p>
						<p class="ssul">여러 사람이 함께 작업하고<br>회의하기에 좋은 공간입니다.</p>
					</div>
				</div>
				<div class="ttl" id="bigRoom">
					<div>
						<img class="w3-img read" src="../resources/img/studyL_1.jpg">
					</div>
					<div class="SSul">
						<p class="w3-center w3-large ssul">큰방</p>
						<p class="w3-center w3-large ssul">사용인원 : 8 ~ 12인</p>
						<p class="ssul">다수의 사람들이 새로운 도전을<br>꿈꾸기에 좋은 공간입니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>