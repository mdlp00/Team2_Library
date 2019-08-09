<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>예약 목록</title>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
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
	table th {
		padding: 5px 0px;
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
	.cancelBtn {
		width: 10px;
		height: 20px;
		background-color: #f6755e !important;
	}
	.w3-button:action {
		box-shadow: 0px 0px 5px 3px gray inset;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	// 취소 버튼 선택시
	$('.cancelBtn').click(function(){
		var num = $(this).attr('id');
		var ok = confirm('정말 취소하시겠습니까?');
		if(ok){
			var ok2 = confirm('취소하시면 복구가 불가능합니다.');
			if(ok2){
				$('#rno').val(num);
				$('#frm').submit();
			}
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
	<div class="w3-content">
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
		<!-- 책 예약 확인 및 취소 -->
		<table>
			<tr class="first">
				<th>책</th>
				<th>예약날짜</th>
				<th>예약순위</th>
				<th>취소</th>
			</tr>
			<c:forEach var="data" items="${LIST}">
				<tr id="col_${data.rno}">
					<th>${data.bookName}</th>
					<th>${data.reserveDate}</th>
					<th>${data.order}</th>
					<th><div class="cancelBtn w3-button" id="${data.rno}"></div></th>
				</tr>
			</c:forEach>
			<c:if test="${empty LIST}">
				<tr class="first">
					<td class="dataEmpty first last td1" colspan="10">예약 내역이 없습니다.</td>
				</tr>
			</c:if>
		</table>
	</div>
	<form method="POST" action="cancelReserveBook.bo" id="frm" name="frm">
		<input type="hidden" id="rno" name="rno">
	</form>
</body>
</html>