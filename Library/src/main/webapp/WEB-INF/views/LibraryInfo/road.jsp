<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Road Guide Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
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
	a {
		text-decoration:none;
	}
	table th.first, table td.first {
	    border-left-width: 0px;
	}
	
	.btn {
		color: white;
		text-decoration:none;
	}
	.btn1 {
		font-size:1.7em;
		font-weight: bold;
	}
	.doc-head {
		overflow: hidden;
	}
	.doc-title {
		zoom: 1;
		word-break: break-all;
		letter-spacing: -1px;
		font-weight: bold;
		color: #333;
		margin: 0px 0px 30px;
		line-height: 30px;
		border-bottom: 1px solid #e66e63;
	}
	.td1 {
		width: 800px;
		height: 20px;
		text-decoration:none;
	}
	.hhh3 {
		font-weight: bold;
		color: #333;
		font-size: 40px;
		max-width: 500px;
		padding: 20px;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- Body -->
	<div class="w3-content">
		<!-- 층별안내-->
			<div class="doc-head">
				<div class="doc-title">
					<h3 class="hhh3">층별안내</h3>
				</div>
			</div>
		<table>
			<tbody>
				<tr class="first">
					<th class="first th1">위치(층)</th>
					<th class="last th2">시설</th>
				</tr>
				<tr id="5F" class="first">
					<th class="first th1">5층</th>
					<td class="left last td1">종합자료2실</td>
				</tr>
				<tr id="4F">
					<th class="first th1">4층</th>
					<td class="left last td1">종합자료1실</td>
				</tr>
				<tr id="3F">
					<th class="first th1">3층</th>
					<td class="left last td1">자율학습2실, 관장실, 행정지원과, 정보자료과, 독서문화진흥과</td>
				</tr>
				<tr id="2F">
					<th class="first th1">2층</th>
					<td class="left last td1">자율학습1실, 시청각실, 세미나실 문화교실, 서고, 사물함</td>
				</tr>
				<tr id="1F">
					<th class="first th1">1층</th>
					<td class="left last td1">어린이실, 도서반납함, 북카페, 안내실</td>
				</tr>
				<tr id="B1">
					<th class="first th1">지하</th>
					<td class="left last td1">식당/매점, 보일러실, 서고</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>