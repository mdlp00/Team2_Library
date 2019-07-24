<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	$(document)

	
</script>
</head>
<body>
	<%-- <jsp:include page="Etc/listbar.jsp"/> --%>
	<!-- Header -->
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

			<form id="board" action="Noitce.s5" id="frm" name="frm">
				<input type="hidden" name="nowpage" id="nowPage">
				<input type="hidden" name="bno" id="bno">
				<input type="hidden" name="writer" id="writer">
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
						<caption>공지사항</caption>
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
								<td class="num first td1"></td>
								<td class="important left mobile-title td2"
									style="padding-left: 10px;"><span></span>
									
				<div>					
				<c:forEach var="data" items="${LIST}">
				<div class="w3-col w3-border-bottom bfr" id="${data.no}">
					<div class="w3-col m2">${data.bno}</div>
					<div class="w3-col m2" id="id${data.bno}">${data.body}</div>
					<c:if test="${data.title.length() gt 8}"><!-- a > b -->
						<div class="w3-col m5">${data.title.substring(0, 6)}...</div>
					</c:if>
					<c:if test="${data.title.length() le 8}"><!-- a <= b -->
						<div class="w3-col m5">${data.title}</div>
					</c:if>
					<div class="w3-col m2">${data.wdate}</div>
					<div class="w3-col m1">${data.hit}</div>
				</div>
			</c:forEach>
			</div>	
								</a></td>
								<td class="mmm2 mobile-num td3">유제황</td>
								<td class="important num mobile-num td4">2019.06.14</td>
								<td class="num mmm1 td5">31</td>
								<td class="file mmm1 last td6"><i class="fa fa-floppy-o"></i>

								</td>
							</tr>

						</tbody>
					</table>

				</div>
			

				<input id="viewPage" name="viewPage" type="hidden" value="1">
				<div id="board_paging" class="dataTables_paginate">
					<span> <a href="" class="paginate_button current"
						keyvalue="1">1</a> <a href="" class="paginate_button" keyvalue="2">2</a>
						/
					</span>
				</div>

				<div class="" >
					<!-- 하단 정렬 시 margin-top 입력 -->
					<fieldset class="fs1">
					
						<select id="search" name="search" class="search1">
							<option value="title+content" selected="selected">제목+내용</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="user_name">글작성자</option>
						</select>
						
						<div class="text1">
							<input
								id="blind" name="search_text" class=""
								style="ime-mode: active;" title="검색어" placeholder="검색어를 입력하세요"
								accesskey="s" type="text" value="" alt="검색어"> 
						</div>	
						<div class="sbtn"> 
							<div class="sbtn2">
							<i class="fa fa-search">
								 	<a href="">검색</a></i>
							</div>
						</div>
					</fieldset>
				</div>
		</div>
	</div>
</body>
</html>