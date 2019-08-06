<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>스터디룸 예약 목록</title>
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
		text-decoration:none;
	}
	.btn1 {
		font-size:1.7em;
		font-weight: bold;
	}
	.doc-title {
    	padding: 50px 0px 200px;
		width: 900px;
		height: 200px;
	}
	.doc-title1 {
    	width: 500px;
	}
	.doc1 {
		font-size: 0.9em;
		width: 500px;
		height: 30px;
	}
	
	tr {
		display: table-row;
		vertical-align: inherit;
		border-color: inherit;
	}
	table thead th {
		background: #f0f8fd;
	}
	table.bbs th.first {
		border-left-width: 1px;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$('.cancelBtn').click(function(){
		var num = $(this).attr('id');
		var ok = confirm('정말 취소하시겠습니까?');
		if(ok){
				$('#rno').val(num);
				$('#frm').submit();
		} else {
		}
	});
});
</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- Body -->
	<div class="sub">
		<div class="doc-title"><h2>[ 스터디룸 예약 현황 ]</h2>
			<div class="doc-title1"><h4>이용자 이름 : ${SID}</h4></div>
		</div>
	</div>
	<!-- 예약 조회 및 취소 -->
	<table>
		<c:if test="${empty LIST}">
			<tr class="first">
				<td class="dataEmpty first last td1" colspan="10">예약 내역이 없습니다.</td>
			</tr>
		</c:if>
		<tr class="first">
			<th>방</th>
			<th>예약 날짜</th>
			<th>시작 시간</th>
			<th>종료 시간</th>
			<th>취소 하기</th>
		</tr>
		<c:forEach var="data" items="${LIST}">
			<tr>
				<c:if test="${data.roomCode eq 1}">
					<th>작은방</th>
				</c:if>
				<c:if test="${data.roomCode eq 2}">
					<th>중간방</th>
				</c:if>
				<c:if test="${data.roomCode eq 3}">
					<th>큰 방</th>
				</c:if>
				<th>${data.rDate}</th>
				<th>${data.startTime}</th>
				<th>${data.endTime}</th>
				<th><div class="w3-button cancelBtn" id="${data.roomNo}">취소</div></th>
			</tr>
		</c:forEach>
	</table>
	<form method="POST" action="${pageContext.request.contextPath}/MemberInfo/cancelSRR.bo" id="frm" name="frm">
		<input type="hidden" id="rno" name="rno">
	</form>
</body>
</html>