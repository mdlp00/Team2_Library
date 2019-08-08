<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Close Days Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	html, body {
		padding: 100px 100px 100px 25%;
	}
	body, h3, ul, li, strong, table {
		margin: 0;
		padding: 0;
		letter-spacing: -1px;
	}
	table {
		width: 100%;
		border-top: 1px solid #dee1e7;
		border-bottom: 2px solid #ccc;
		border-collapse: collapse;
		border-spacing: 0;
		font-size: inherit;
		word-break: break-all;
	}
		
	.doc-title {
		border-bottom: 1px solid #e66e63;
	}
	.doc-title h3 {
		display: inline-block;
		zoom: 1;
		word-break: break-all;
		letter-spacing: -1px;
		font-weight: bold;
		color: #333;
		margin: 16px 0;
		padding: 30px 0;
		line-height: 30px;
	}
	.doc-head {
		overflow: hidden;
	}
	.doc-body h3 {
		font-size: 125%;
		line-height: 125%;
		color: #e66e63;
		padding: 8px 0;
		margin-top: 30px;
		padding-left: 20px;
		letter-spacing: -1px;
		font-weight: bold;
		font-size: 130%;
		line-height: 130%;
	}
	.doc-body {
		color: #666;
		line-height: 150%;
		padding-top: 20px;
	}
	.doc {
		padding: 0 0 60px;
	}
	.center, .txt-center {
		text-align: center!important;
	}
/* tables */
	.doc-body table tbody .thead th, .doc-body table thead th {
	    background:  #e66e63;
	}
	table tr.center th, table tr.center td, table thead.center th, table thead.center td, table tbody.center th, table tbody.center td, table td.center, table.center th, table.center td {
	    text-align: center;
	}
	table th.btw, table td.btw {
	    border-top-width: 1px;
	}
	table th.first, table td.first {
	    border-left-width: 0px;
	}
	table tbody .thead th, table.type2 tbody th, table thead th {
	    border-color: #d1d1d1;
	    border-bottom-color: #d1d1d1;
	    border-top-color: #5e6062;
	    color: #333;
	}
	table th, table td {
	    padding: 5px 10px;
	    border: 1px solid #e5e8eb;
	    vertical-align: middle;
	}
	table th, table td {
	    line-height: 150%;
	}
	}
	table#teach_table td, th {
	    word-break: break-all;
	}
	th {
	    font-weight: bold;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
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
		<div class="doc">
			<div class="doc-head">
				<div class="doc-title">
					<h3 style="font-size: 40px; max-width: 500px; padding: 20px;">이용시간 및 휴관일</h3>
				</div>
			</div>
			<div class="doc-body" id="contentArea">
				<div class="body">
					<h3 class="fas fa-book fa-lg">이용시간</h3>
				</div>
				<table summary="도서관 이용에 대한 평일, 주말시간을 제공한 표" class="center">
					<thead>
						<tr class="first">
							<th scope="col" rowspan="2" class="first th1">구분</th>
							<th scope="col" colspan="2" class="th2">평일</th>
							<th scope="col" rowspan="2" class="last th3">토, 일요일</th>
						</tr>
						<tr>
							<th class="btw first th1" scope="col">하절기(3월~10월)
							</th>
							<th class="btw last th2" scope="col">동절기(11월~2월)
							</th>
						</tr>
					</thead>
					<tbody>
						<tr class="first">
							<th class="btw first th1">종합자료1실</th>
							<td colspan="2" class="td1">09:00 - 22:00</td>
							<td rowspan="3" class="last td2">09:00 - 17:00</td>
						</tr>
						<tr>
							<th class="btw first th1">종합자료2실</th>
							<td class="td1">09:00 - 20:00</td>
							<td class="last td2">09:00 - 19:00</td>
						</tr>
						<tr>
							<th class="btw first th1">어린이실</th>
							<td colspan="2" class="last td1">09:00 - 18:00</td>
						</tr>
						<tr>
							<th class="btw first th1">자율학습1실</th>
							<td class="td1">07:00 - 23:00</td>
							<td class="td2">08:00 - 23:00</td>
							<td rowspan="2" class="last td3">
								"07:00 - 22:00"
								<br>
								"(동절기 08:00 - 22:00)"
							</td>
						</tr>
						<tr>
							<th class="btw first th1">자율학습2실</th>
							<td class="td1">07:00 - 23:00</td>
							<td class="last td2">08:00 - 23:00</td>
						</tr>
					</tbody>
				</table>
				<h3 class="fas fa-book fa-lg">휴관일</h3>
				<ul class="con2">
					<li>정기휴관일 : 매월 둘째, 넷째 수요일</li>
					<li>일요일을 제외한 법정공휴일 (공휴일과 일요일이 겹칠 경우, 휴관)</li>
					<li>임시공휴일 : 도서관 사정으로 임시로 정하는 휴일</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>