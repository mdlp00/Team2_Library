<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			
<style type="text/css">
	 body {
		margin: 0px;
		padding: 5% 20% 20% 15%;
		text-align: center;
	}
	.box {
		background-color : #e66e63;
		padding : 30px 0px 30px;
		text-align: left;
	}
	.color1 {
		color: #e66e63;
	}
	.b1 {
		margin-left: 5%;
		padding-top: 2%;
		text-align: left;
	}
	.b2 {
		font-size: 17px;
		width : 135px;
		display : block;
		text-align : right;
		text-align: reft;
	}
	
	.it{
		width: 100px;
		height: 45;
	}
	
	.it2 {
		display: inline-block !important;
		width: 75.5% !important;
		height: 45px;
	} 
	
	.itm{
		width: 70px;
		height: 45px;
	} 
	
	.obtn{
		line-height: 200%;
	}
	
	.in1{
		height: 40px; 
		width: 90px; 
		background-color: #e66e63;
		color: white;
		width: 19.5%;
		display: inline-block ;
	}
</style>
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
		
		case 'mbtn':
			target = 'mypage.bo';
			break; 
		}

			$(location).attr('href', target);
	}); 
});

	$(document).ready(function(){
		$('#ok').click(function(){
			$(location).attr('href', '../');
		});
		$('#edit').click(function(){
			$(location).attr('href', 'mypageEdit.bo');
		});
	});

</script>
</head>
<body class="subpage">
			<header id="header">
							<a href="index.html" class="logo"> Daye Library</a>
							<nav class="right">
								<a href="#" class="button alt">Login</a>
							</nav>
			</header>
		<!-- Header -->
			<header id="header">
				<a href="index.html" class="logo"> Daye Library</a>				
				<nav class="right">
					<c:if test="${not empty SID}">
					<a style='display:inline; font-size:25px;' class="button" id="mbtn">${SID} 님</a>
					</c:if>
					<a id="lbtn" class="button alt">Login</a>
				</nav>
			</header>


	<div class="w3-col w3-center">
		<h1 class="w3-container w3-text-white" style="font-weight: bold; font-size: 200%;"></h1>
	</div> 
	<div class="w3-col m3"><p></p></div>
	<div class="w3-center w3-col m9"> 
		<a style="text-decoration:none;"><h1>마이 페이지</h1> </a>
			<div class="w3-container w3-card-4 w3-light-grey w3-margin">
				 
					<div class="w3-row b1">
						<h3 class="w3-col m3 txt-right">아이디 : </h3>
						<h3 class="w3-col m9 txt-left pdl" id="mid">${DATA.mid}</h3> 
					</div>
					<div class="w3-row b1">
						<h3 class="w3-col m3 txt-right">이름 : </h3>
						<h3 class="w3-col m9 txt-left pdl" id="mname">${DATA.mname}</h3> 
					</div>
					<div class="w3-row b1">
						<h3 class="w3-col m3 txt-right">생년월일 : </h3>
						<h3 class="w3-col m9 txt-left pdl" id="mbirth" type="date">${DATA.mbirth}</h3> 
					</div>   
					<div class="w3-row b1">    
						<h3 class="w3-col m3 txt-right">주소 : </h3>
						<h3 class="w3-col m9 txt-left pdl" id="maddr">${DATA.maddr}</h3> 
					</div>
					<div class="w3-row b1">
						<h3 class="w3-col m3 txt-right">연락처 : </h3>
						<h3 class="w3-col m9 txt-left pdl" id="mtel">${DATA.mtel}</h3> 
					</div>
					<div class="w3-row b1">
						<h3 class="w3-col m3 txt-right">이메일 : </h3>
						<h3 class="w3-col m9 txt-left pdl" id="mail">${DATA.mail}</h3> 
					</div>
					<button class="w3-button w3-section w3-center obtn" style="background-color: #e66e63; color: white; width: 95px;" id="ok">확인</button>
					<button class="w3-button w3-section w3-center obtn" style="background-color: #e66e63; color: white; width: 95px;" id="edit">수정</button>
			</div>
		</div>
		<div class="w3-col m3"><p></p></div>
</body>
</html>