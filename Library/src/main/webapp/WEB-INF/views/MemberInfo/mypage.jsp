<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.4.1.min.js" ></script>
<title>My Page</title>
<style type="text/css">
	 body {
		margin: 0px;
		padding: 5% 20% 20% 15%;
		text-align: center;
	}
	
	.bbb1 {
		margin-left: 5%;
		padding-top: 2%;
		text-align: left;
	}
	.obtn {
		line-height: 200%;
		background-color: #e66e63;
		color: white;
		width: 95px;
	}
</style>
<script type="text/javascript">
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
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />

	<!-- Body -->
	<div class="w3-content w3-center w3-row">
		<a style="text-decoration: none;"><h1>마이 페이지</h1></a>
		<div class="w3-container w3-card-4 w3-light-grey w3-margin">
			<div class="w3-row bbb1">
				<h3 class="w3-col m3 txt-right">아이디 : </h3>
				<h3 class="w3-col m9 txt-left pdl" id="mid">${DATA.mid}</h3>
			</div>
			<div class="w3-row bbb1">
				<h3 class="w3-col m3 txt-right">이름 : </h3>
				<h3 class="w3-col m9 txt-left pdl" id="mname">${DATA.mname}</h3>
			</div>
			<div class="w3-row bbb1">
				<h3 class="w3-col m3 txt-right">생년월일 : </h3>
				<h3 class="w3-col m9 txt-left pdl" id="mbirth">${DATA.mbirth}</h3>
			</div>   
			<div class="w3-row bbb1">    
				<h3 class="w3-col m3 txt-right">주소 : </h3>
				<h3 class="w3-col m9 txt-left pdl" id="maddr">${DATA.maddr}</h3>
			</div>
			<div class="w3-row bbb1">
				<h3 class="w3-col m3 txt-right">연락처 : </h3>
				<h3 class="w3-col m9 txt-left pdl" id="mtel">${DATA.mtel}</h3>
			</div>
			<div class="w3-row bbb1">
				<h3 class="w3-col m3 txt-right">이메일 : </h3>
				<h3 class="w3-col m9 txt-left pdl" id="mail">${DATA.mail}</h3>
			</div>
			<button class="w3-button w3-section w3-center obtn" id="ok">확인</button>
			<button class="w3-button w3-section w3-center obtn" id="edit">수정</button>
		</div>
	</div>
</body>
</html>