<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w3.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	${ pageMenu }
	<table cellspacing="0" border="1" summary="책검색  결과" class="tbl_type">
		        <caption>책검색  결과</caption>
		                <colgroup>
		                        <col width="10%">
		                        <col width="20%">
		                        <col width="15%">
		                        <col width="15%">
		                        <col width="40%">
		                </colgroup>
		                <thead>
		                        <tr>
		                        <th scope="col" class="ta">책표지</th>
		                        <th scope="col" class="ta">책이름</th>
		                        <th scope="col" class="ta">저자</th>
		                        <th scope="col" class="ta">출판사</th>
		                        <th scope="col" class="ta">요약 내용</th>
		                        </tr>
		                </thead>
		                <tbody id="non">
							<c:forEach var="book"  items="${ list }">
								<tr class="book_select" id="${ book.b_no }">
									 <td><img src='${ book.b_img }' width="50px" height="70px" /></td>
									 <td>${ book.b_name }</td>
									 <td>${ book.b_writer }</td>
									 <td>${ book.b_publisher}</td> 
									 <td>${ book.b_description }</td>
									 </tr>
							</c:forEach>
		                </tbody>
	</table>
</body>
</html>