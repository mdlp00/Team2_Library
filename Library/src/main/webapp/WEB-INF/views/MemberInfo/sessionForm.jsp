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
body {
	padding: 50px 200px 200px 400px;
}

.btn {
	color: white;
	text-decoration: none;
}

.btn1 {
	font-size: 1.7em;
	font-weight: bold;
}

.doc-title {
	width: 900px;
	height: 200px;
}

col {
	display: table-column;
}

.td1 {
	width: 800px;
	height: 20px;
	text-decoration: none;
}

a {
	text-decoration: none;
}

.bt {
	background-color: #e66e63;
	width: 15px;
	heigth: 15px;
	font-size: 15pt;
	color: white;
	text-align: center;
	padding: 10px;
	font-weight: bold;
}

.btn-wrap {
	text-align: center;
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
	<!-- Header -->
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a>
		</nav>
		<a href="index.html" class="logo"> Daye Library</a>
		<nav class="right">
			<a href="#" class="button alt">Log in</a>
		</nav>
	</header>



	<div class="doc">
		<div class="doc-head">
			<div class="doc-title">
				<h3>회원탈퇴</h3>
			</div>
		</div>
		<div class="doc-body" id="contentArea">
			<div class="body">





				<script type="text/javascript">
$(function() {

	if (location.href.indexOf('localhost') == -1 && location.href.indexOf('https') == -1) {
		location.href = window.location.href.replace('http', 'https')
	}

	$('#save-btn').on('click', function(e) {
		e.preventDefault();
		if ($('input#member_pw').val() == '') {
			alert('비밀번호를 입력해주세요.');
			$('input#member_pw').focus();
			return false;
		}
		if (confirm('정말로 탈퇴하시겠습니까?')) {
			doAjaxPost($('#memberInfoForm'));
		}
	});



});
</script>

				<div class="join-wrap" style="padding: 0;">
					<div class="txt-box" style="margin-bottom: 20px;">
						<div id="txt_box_wrapper02">
							<div id="txt_box_wrap02">
								<ul>
									<li><i class="fa fa-warning"></i> 회원 탈퇴를 하시면 아이디를 포함한 모든
										개인정보가 영구적으로 삭제되어 복구되지 않습니다.</li>
									<!--  <li><i class="fa fa-warning"></i> 회원 탈퇴를 하시면 해당 아이디로 등록된 게시물이나 신청현황은 삭제되지 않고 그대로 남아 있습니다.</li>
					<li><i class="fa fa-warning"></i> 탈퇴 후에는 작성한 글에 대한 모든 권한(수정, 삭제 등)을 잃게 되므로, 게시물 삭제를 원하시면 반드시 탈퇴 전 삭제하시기 바랍니다.</li>-->
									<li><i class="fa fa-warning"></i> 탈퇴 후에는 자료대출, 홈페이지 이용,
										전자도서관 이용 등 모든 도서관 서비스를 이용하실 수 없습니다.</li>
									<li><i class="fa fa-warning"></i> 탈퇴 시 미처리 업무(미반납 도서 등)가
										있을 경우 탈퇴가 불가능합니다.</li>
									<li><i class="fa fa-warning"></i> 회원님의 정보를 안전하게 보호하기 위해 한번
										더 비밀번호를 입력해 주시기 바랍니다.</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="seccession"></div>
					<form id="memberInfoForm" action="/ddmlib/intro/join/secession.do"
						method="post">
						<table id="memberForm">
							<tbody>
								<tr class="first">
									<th class="first th1">비밀번호(<span style="color: red;">*</span>)
									</th>
									<td class="last td1"><input id="member_pw"
										name="member_pw" class="text" type="password" value="">
									</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a href="#" id="save-btn" class="bt">탈퇴</a> <a href="#"
								id="cancel-btn" class="bt">취소</a>
						</div>
						<br>
					</form>
				</div>

			</div>
		</div>

	</div>
</body>
</html>