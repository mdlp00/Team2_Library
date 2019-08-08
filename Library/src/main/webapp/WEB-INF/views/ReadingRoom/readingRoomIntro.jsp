<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>ReadingRoom Page</title>
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
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
	});
</script>
</head>
<body class="subpage">
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
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