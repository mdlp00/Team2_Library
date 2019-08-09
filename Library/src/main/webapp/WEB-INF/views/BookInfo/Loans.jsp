<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>대여 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
<style type="text/css">
	body {
		padding: 50px 200px 200px 400px;
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
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- Body -->
	<div class="sub">
		<div class="doc-title"><h2>[ 대출현황 ]</h2>
			<div class="doc-title1"><h4>이용자 대출상태</h4>
				<ul>
					<li class="doc1">이용자 이름 : ${SID}</li> 
					<li class="doc1">회원상태 : ${BOOK}권 대출중</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 대출 조회 및 연기 -->
	<table>
		<c:if test="${empty LIST}">
			<tr class="first">
				<td class="dataEmpty first last td1" colspan="10">대출 내역이 없습니다.</td>
			</tr>
		</c:if>
		<tr class="first">
			<th>책</th>
			<th>대출 날짜</th>
			<th>반납 예정</th>
			<th>반납 날짜</th>
			<th>연체 일수</th>
			<th>연장 여부</th>
		</tr>
		<c:forEach var="data" items="${LIST}">
			<tr id="${data.rno}">
				<th>${data.bookName}</th>
				<th>${data.rentDate}</th>
				<th>${data.rDay}</th>
				<th>${data.returnDate}</th>
				<th>${data.overdue} 일</th>
				<th>${data.extended}</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>