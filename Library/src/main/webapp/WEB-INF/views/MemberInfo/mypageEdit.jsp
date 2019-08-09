<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.4.1.min.js" ></script>
<title>My Page Edit</title>
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
	.obtn{
		line-height: 200%;
		background-color: #e66e63;
		color: white;
		width: 95px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#cancel').click(function(){
			$(location).attr('href', '../');
		});
		
		$('#ok').click(function(){
			var maddr = $('#maddr').val();
			var mtel = $('#mtel').val();
			var mail = $('#mail').val();
			
			// 전화번호 정규식 검사
			var re1 = /^[0-9]{2,3}-[0-9]{2,4}-[0-9]{4}$/;	
			if( mtel != '${DATA.mtel}'){		
				if(!(re1.test(mtel))){
					alert('올바른 전화번호 형식이 아닙니다.');
					return;
				}
			}

			// 메일검사   
			var re2 =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
			if( mail != '${DATA.mail}'){
				if(!(re2.test(mail))){
					alert('올바른 메일 형식이 아닙니다.');  
					return;      
				}		
			}

			$('#frm').attr('action', 'mypageProc.bo');
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />

	<!-- Body -->
	<div class="w3-content w3-center w3-row">
		<a style="text-decoration: none;"><h1>마이 페이지 수정</h1></a>
		<div class="w3-container w3-card-4 w3-light-grey w3-margin">
			<form method="POST" name="frm" id="frm"  style='display:inline'>
				<div class="w3-row bbb1">
					<h3 class="w3-col m3 txt-right">아이디 :</h3>
					<h3 class="w3-col m9 txt-left pdl" id="mid">${DATA.mid}</h3>
				</div>
				<div class="w3-row bbb1">
					<h3 class="w3-col m3 txt-right">이름 :</h3>
					<h3 class="w3-col m9 txt-left pdl" id="mname">${DATA.mname}</h3>
				</div>
				<div class="w3-row bbb1">
					<h3 class="w3-col m3 txt-right">생년월일 :</h3>
					<h3 class="w3-col m9 txt-left pdl" id="mbirth" type="date">${DATA.mbirth}</h3>
				</div>
				<div class="w3-row bbb1">
					<label class="w3-col m3 txt-right">주소 :</label>
					<input type="text" class="w3-col m9 txt-left pdl" id="maddr" name="maddr" value="${DATA.maddr}">
				</div>
				<div class="w3-row bbb1">
					<label class="w3-col m3 txt-right">연락처 :</label>
					<input type="text" class="w3-col m9 txt-left pdl" id="mtel" name="mtel" value="${DATA.mtel}">
				</div>
				<div class="w3-row bbb1">
					<label class="w3-col m3 txt-right">이메일 :</label>
					<input type="text" class="w3-col m9 txt-left pdl" id="mail" name="mail" value="${DATA.mail}">
				</div>
			</form>
			<button class="w3-button w3-section w3-center obtn" id="ok">수정 완료</button>
			<button class="w3-button w3-section w3-center obtn" id="cancel">취소</button>
		</div>
	</div>
</body>
</html>