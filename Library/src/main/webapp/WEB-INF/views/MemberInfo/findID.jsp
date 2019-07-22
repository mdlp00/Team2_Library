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
		 padding: 50px 200px 200px 12%;
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
	.goBack {
		border: none;
		display: inline-block;
		padding: 4px 8px;
		overflow: hidden;
	}
	.goBack:hover {
		background-color: #e66e63;
		color: white;
	}
	
	#btn {
		display: inline-block;
		background-color: #e66e63;
		border: 0;
		margin: 0;
		padding: 10px, 10px;
		width: 100%;
		height: 40px;
		color: white;
		font-size: 15pt;
	}
	
	.obtn{
		line-height: 200%;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn').click(function(){
			var sid = $('#id').val();
			var semail = $('#email').val();
			
			if(!sid || !semail){
				alert('빈칸을 채워주세요!');
				return;
			}
			
			$.ajax({
				url : "./pwrenew.ck",
				type: "POST",
				dataType: "json",
				data: {
					"id" : sid,
					"email" : semail
				},
				success: function(data){
					if(data.cnt == 0){
						alert("입력하신 메일로 임시 아이디를 발송했습니다.");
						$('#pid').val(sid);
						$('#pemail').val(semail);
						$('#frm').attr('action', 'pwsend.c3');
						$('#frm').submit();
					} else {
						alert("입력하신 메일이 아이디에 등록된 메일과 일치하지 않습니다.\r\n다시 입력하여 주십시오.");
						$('#email').val('');
						$('#email').focus();
					}
				},
				error: function(){
					alert("처리 에러");
					return;
				}
			});
		});
		
		$('#goBack').click(function(){
			$(location).attr('href', 'login.c3');
		});
	});
</script>
</head>
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
	
			<div class="w3-content" style="border: 1px solid #e66e63; margin-top: 80px; width: 400px;">
				<div class="w3-padding-large">
					<form method="POST" action="#" name="frm" id="frm">
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
							<div class="mint" style="font-size: 13pt; text-align: center;">회원 가입시 작성한 이메일로</div>
							<div class="mint" style="font-size: 13pt; text-align: center;">아이디를 보내드립니다.</div>
							<input type="hidden" id="pid" name="pid">
							<input type="hidden" id="pemail" name="pemail">
						</div>
						<div><p></p></div>
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
								<div class="w3-row b1">
								<label class="b2">이름 입력 : </label>
								<input class="w3-border it" id="name" name="name" type="text" placeholder="이름 입력">
							</div>
						</div>
						<div><p></p></div>
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
								<div class="w3-row b1">
									<label class="b2" style="margin-top: -10px;">생년월일 입력 : </label>
									<input class="w3-border it" id="birth" name="birth" type="date" placeholder="생년월일 입력">
								</div>
						</div>
					</form>
					<div><p></p></div>
					<div class="w3-row w3-center w3-margin">
						<div style="display: inline-block; width: 20px;  height: 10px;"></div>
						<button class="obtn" id="btn" name="btn"><span>확인</span></button>
					</div>
					<div><p></p></div>
					<div class="w3-row w3-center w3-margin mint">
						<div class="goBack" id="goBack">
							<i class="fa fa-email-reply"></i><span style="margin-left: 10px;">기억났어요! 돌아갈게요!</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
	</div>
</body>
</html>
