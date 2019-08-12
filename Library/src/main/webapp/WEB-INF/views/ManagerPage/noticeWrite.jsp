<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w3.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
			
<style type="text/css">

.btn {
	color: white;
	text-decoration: none;
}

.btn1 {
	font-size: 1.7em;
	font-weight: bold;
	width: 40px;
	height: 40px;
}

.p {
	color: white;
}

table.bbs tr.notice {
	background: #f5f6f7
}

@media ( max-width : 430px) and (min-width: 0px) {
	table.bbs col.col2 {
		width: 1%
	}
	td.title {
		width: 100%;
		float: left;
		border-bottom: none;
		margin-bottom: -5px;
	}
	td.username {
		float: left;
		display: table-cell !important;
		border-top: none;
		font-size: 12px !important;
	}
	td.adddate {
		float: left;
		display: table-cell !important;
		border-top: none;
		font-size: 12px !important;
	}
	td.viewCount {
		float: left;
		display: table-cell !important;
		border-top: none;
		font-size: 12px !important;
	}
	table.bbs tbody tr:hover {
		background: #f8f8f8
	}
	td.txtBar {
		display: inline-block;
		width: 1px;
		height: 10px;
		font-size: 0px;
		line-height: 0;
		text-indent: -9999px;
		vertical-align: top;
		margin: 3px 5px;
		background: rgb(217, 217, 217);
		}


	html, body {
		text-align: center;
		
	}

	#search{
		width: 130px;
		height: 40px; 
		}
	#blind{
		width:	250px;
		height: 40px;
		
	}
	
	#blind1{
		width:	40px;
		height: 80px;
	
	}
	
	.fs1{
		width: 100%;
		height: 60px;
	}
	
	.search1{
		display: inline-block;
		width: 100px;
	}

	.text1{
		display: inline-block;
	}
	
	
	.sbtn{
		display: inline-block;		
		height: 30px;
	}
	
	.sbtn2{
		width: 60px;
		height: auto;
		border: 1px solid black;
	}
	.b1{
		background: #f8f8f8
	}
</style>
<script type="text/javascript">
$(function(){
	$('#wbtn').click(function(){
		var sbody = $('#body').val();
		var name = $('#writer').val();
		var stitle = $('#title').val();
		
		if(!sbody || !sname || !stitle){
			alert('비워진 칸을 작성해 주세요');
		}
		
		$('#frm').submit();
	});
});


</script>
</head>
<body>

<!-- Header -->
<jsp:include page="../Etc/listbar.jsp" />

<div class="w3-content">
		<div class="w3-col m3"><p></p></div>
		<form method="POST" action="boardWriteProc.s5" id="frm" name="frm"
				class="w3-col m6">
			<input type="hidden" name="writer" id="writer" value="${name}">
			<br><br>
			<div class="w3-container w3-card w3-padding-2">
			<div style="color: black; text-align: left;"><h4>공지사항 작성</h4></div>
			
			
			
			<span class="w3-col m4 w3-align-right">I D : </span>
			<input type="text" id="id" name="id" class="w3-col m8 w3-input w3-border" value="${name}" readonly >
	
			<span class="w3-col m4 w3-align-right">제목 : </span>
			<input type="text" id="title" name="title" class="w3-col m8 w3-input w3-border">
	
			<span class="w3-col m4 w3-align-right">본 문 : </span>
			<textarea id="body" name="body" class="w3-col m8 w3-input w3-border" 
						rows="10" style="resize: none;"></textarea>
						
			<div class="w3-col w3-center">
				<div class="w3-btn" style=" background: #ed4e42; color:white;">취소</div>
				<div class="w3-btn" style=" background: #ed4e42; color:white;">저장</div>
				
				<br><br>
			</div>
			</div>
		</form>
</div>
			<jsp:include page="../Etc/footer.jsp"></jsp:include>
</body>
</html>