<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>[관리자]대여목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />

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
	.rentBtn {
		width: 10px;
		height: 30px;
		background-color: rgba(255, 0, 0, 0.6);
		text-align : center;
		color : white;
	}
	.w3-button:action {
		box-shadow: 0px 0px 5px 3px gray inset;
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
	table th {
		padding: 5px 0px;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	
	// 반납 버튼 선택시
	$('.returnBtn').click(function(){
		// 대여번호
		var rno = $(this).attr('id');
		if(confirm('반납하시겠습니까?') == false)
			return;
		
		$('#rent_no').val(rno);
		$('#frm').attr('action','returnBtn.bo');
		$('#frm').submit();

	});
});
</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />

	<!-- Body -->	
		<form method="post" action="#" name="frm" id="frm">
			<input type="hidden" name="rent_no" id="rent_no">
		</form>

<div class="w3-content">
	<div class="sub">
		<div class="doc-title"><h2>[ 대여리스트현황 ]</h2>
			<div class="doc-title1"><h4>이용자 대여리스트</h4>
				<ul>
					<li class="doc1" style="color : red;">관리자 ID : ${SID}</li> 
					<li class="doc1">총 대여수 : <%-- ${BOOK} --%>권 예약중</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 책 예약 확인 및 취소 -->
	<table>
		<tr class="first">
			<th>이용자 Id</th>
			<th>이용자 이름</th>
			<th>책 이름</th>
			<th>대여 날짜</th>
			<th>반납 예정</th>
			<th>연체 일수</th>
			<th>연장 횟수</th>
			<th>반납 여부</th>
		</tr>
		<c:forEach var="data" items="${LIST}">
			<tr>
				<th>${data.m_id}</th>
				<th>${data.m_name}</th>
				<th>${data.b_name}</th>
				<th>${data.rent_date}</th>
				<th>${data.return_date}</th>
				<th>D${data.overdue_day}</th>
				<th>${data.extend_count}</th>
				<th><button class="returnBtn" id="${data.rent_no}">반납</button></th>
			</tr>
		</c:forEach>
		<c:if test="${empty LIST}">
			<tr class="first">
				<td class="dataEmpty first last td1" colspan="10">대출 내역이 없습니다.</td>
			</tr>
		</c:if>
	</table>
</div>
</body>
</html>