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

	html, body {
		text-align: center;
		 padding: 50px 200px 200px 25%;
	}
		

	.inp {
		width: 310px;
		border: 0;
		border-bottom: 1px solid lightgray;
	}
	input:focus {
		box-shadow: 0px 0px 0px 0px white !important;
		border-bottom: 1px solid orange !important;
	}
	.mint {
		color: #e66e63;
	}
	.box {
		display: inline-block;
		width: 400px;
		height: 640px;
	}
	.pw_renew {
		border: none;
		display: inline-block;
		padding: 4px 8px;
		overflow: hidden;
	}
	.pw_renew:hover {
		background-color: #e66e63;
		color: white;
	}
	.obtn{
		line-height: 200%;
	}
	
	#btn{
		display: inline-block;
		background-color:#e66e63;
		border: 0;
		margin: 0;
		padding: 10px, 10px;
		width: 100%;
		height: 45px;
		color: white;
		font-size: 15pt;
	
	
</style>

<script type="text/javascript">

$(document).ready(function(){
	$('#btn').click(function(){
		$('#frm').attr('action', 'loginProc.c3');
		$('#frm').submit();
	});
	
	$('#pw_renew').click(function(){
		$(location).attr('href', 'passwordRenew.c3');
	
		)};
	
	
	
</script>
<body class="subpage">
			
		<!-- Header -->
			<header id="header">
				<nav class="left">	
				</nav>
				<a href="index.html" class="logo"> Daye Library</a>
				<nav class="right">
				</nav>
			</header>
			
	<!-- Menu -->
			

<div class="w3-col m4"><p></p></div>
	<div class="w3-col m4">
		
			<div class="w3-content w3-center" style="border: 1px solid #e66e63; margin-top: 80px; width: 400px;
		height: 400px;">
				<div class="w3-padding-large">
					<form method="POST" action="#" name="frm" id="frm">
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 10px;"></div>
							<span class="mint" style="font-size: 13pt; width: 30px; height: 30px;">로그인 정보를 입력해주세요</span>
						</div>
						<div><p></p></div>
						<div class="w3-row w3-margin">
							<div style="display: inline-block; "></div>
							<div style="display: inline-block;">
								<div style="color: gray;">아이디</div>
								<input type="text" class="inp" id="id" name="id" />
							</div>
						</div>
						<div><p></p></div>
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
							<div style="display: inline-block;">
								<div style="color: gray;">비밀번호</div>
								<input type="password" class="inp" id="pw" name="pw" />
							</div>
						</div>
						<div><p></p></div>
						<div class="w3-row w3-center w3-margin">
							<div style="display: inline-block; width: 20px; height: 10px;"></div>
							<button class="obtn" id="btn" name="btn"><span>로그인</span></button>
						</div>
						<div><p></p></div>
					</form>
					<div class="w3-row w3-center w3-margin mint">
						<div class="pw_renew" id="pw_renew">
							<i class="fa fa-unlock-alt"></i><span style="margin-left: 10px;">비밀번호 재설정</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	
		<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>