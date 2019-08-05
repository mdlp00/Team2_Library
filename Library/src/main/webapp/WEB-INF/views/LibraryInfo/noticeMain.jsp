


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
	<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
			
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
}

	html, body {
		text-align: center;
		padding: 50px 100px 100px 15%;
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
</style>
<script type="text/javascript">



</script>

</head>
<body>
	 <jsp:include page="../Etc/listbar.jsp"/> 

	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a>
		</nav>
		<a href="index.jsp" class="logo">Daye Library</a>
		<nav class="right">
			<a href="#" class="button alt">Log in</a>
		</nav>
	</header>


	<div class="doc-body" id="contentArea">
		<div class="body">

			<form action="notice.bo" id="frm" name="frm">
				<input type="hidden" name="nowpage" id="nowPage">
				<input type="hidden" name="bno" id="bno">
				<input type="hidden" name="writer" id="writer">
				<input type="hidden" name="nno" id="nno">
			</form>

<!-- 
					<div class="infodesk">

						<span class="bbs-result">총 게시물 : <b> </b>
						</span> <select id="rowCount" name="rowCount" class="selectmenu"
							style="width: 110px;" title="보기 개수 선택">


							<option value="10" selected="selected">10개씩 보기</option>

							<option value="20">20개씩 보기</option>

							<option value="30">30개씩 보기</option>

							<option value="40">40개씩 보기</option>

							<option value="50">50개씩 보기</option> -->
							
				<div class="table-wrap">
					<table class="bbs center" summary="일반 게시판">
					<div class="b1">
						<caption><h3>공지사항</h3></caption>
					</div>
						<colgroup>
						
							<col width="10%" class="col1">
							<col class="col2">
							<col width="12%" class="col3">
							<col width="10%" class="col4">
							<col width="10%" class="col5">
							<col width="10%" class="col6">
						</colgroup>
						
						<thead>
							<tr class="first" id="kind" name="kind">
							
								<th vlaue="no"> 번호</th>
								<th value="title"> 제목</th>
								<th value="manager"> 작성자</th>
								<th value="date"> 작성일</th>
								<th value="views"> 조회수</th>
						</thead>
						 
						 
						 
						<tbody id="board_tbody">
						
							<tr class="first">
								<td class="td1" >${NVO.no}</td>
								<td class="td2"style="text-align: left;">${NVO.title}</td>
									<td class="td3">${NVO.name}</td>
									<td class="td4">${NVO.ndate}</td>
									<td class=" td5">${NVO.views}</td>
									<td class="file mmm1 last td6"><i class="fa fa-floppy-o"></i>
								</td>
							</tr>
						</tbody>						
					</table>	
					<div class="w3-container w3-card w3-padding-24">
					<div style="color: black; text-align: left;"><h4> ${NVO.body}</h4></div>
					</div>
				</div>
			

		<jsp:include page="../Etc/footer.jsp"></jsp:include>
</body>
</html>