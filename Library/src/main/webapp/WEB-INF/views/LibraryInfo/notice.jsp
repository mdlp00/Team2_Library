<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Notice Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/c3.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<style type="text/css">
	.btn {
		color: white;
		text-decoration: none;
	}
	
	.btn1 {
		font-size: 1.7em;
		font-weight: bold;
	}
	.button1{
		text-align:center;
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
	#blind{
		width:	250px;
		height: 40px;
		
	}
	#blind1{
		width:	40px;
		height: 80px;
	}
	#word {
		display: inline-block;
		width: 600px;
		margin-left: 10px;
		float:left;
		ime-mode: active;
	}
	
	.fs1{
		width: 100%;
		height: 60px;
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
$(document).ready(function(){
	
	// 게시판 인덱스 뽑기
	$('.first').click(function(){
		var snno = $(this).attr('id');
		$('#nno').val(snno);
		$('#frm').attr('action','noticeMain.bo'); //컨트롤러로 보내짐
		$('#frm').submit();
	});
	
	//검색처리
	$('#schbtn').click(function(){
		var word = document.getElementById('word').value; //검색창에 입력한 값 가져옴
	/* 	alert(word); */ //정보확인창
		$('#board_tbody').empty(); // 초기화
		$.ajax({  //비동기
			url:"noticeSearch.bo", //버튼 눌렀을 때 요청페이지
			type:"POST",
			dataType: "json", //넘기는 데이터 타입
			// json형식
			data:{
				"word" : word
			//    키               벨류
			},
			success: function(data){
				var len = Object.keys(data.list).length; //몇개있는지 알기위해 사용
				for(var i=0; i< len; i++){ //검색갯수만큼 돌림
					$('#board_tbody').append(
							"<tr class=\"first\" id=\""+data.list[i].no+"\">" +
								"<td class=\"td1\" >" + data.list[i].no + "</td>" +
								"<td class=\"td2\"style=\"text-align: left;\">" + data.list[i].title+ "</td>" +
								"<td class=\"td3\">" + data.list[i].name + "</td>" +
								"<td class=\"td4\"> "+ data.list[i].ndate +"</td>" +
								"<td class=\"td5\">" + data.list[i].views + "</td>" +
								"<td class=\"file mmm1 last td6\"><i class=\"fa fa-floppy-o\"></i></td>" +
							"</tr>"
					);
				}
				
				// . : 클래스  / # : id
				// 클래스 : 공통된건 클래스로처리
				// id : 아이디 중복 안되
				$('.first').click(function(){
					var snno = $(this).attr('id');
					alert(snno);
			// form로 뽑은 id값 전달
					$('#nno').val(snno);
					$('#frm').attr('action','noticeMain.bo');
					$('#frm').submit();
				});
			},
			error: function(){
				alert("오류@@@####");
			}
		});
	});
	$('.button1').click(function(){
		location.href = "../ManagerPage/noticeWrite.bo";
	});
}); 
</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- 화면에 보이지 않음 / 데이터넘겨주는 용도  -->
	<form method="POST" action="#" id="frm" name="frm">
		<input type="hidden" name="nowpage" id="nowPage">
		<input type="hidden" name="bno" id="bno">
		<input type="hidden" name="writer" id="writer">
		<input type="hidden" name="nno" id="nno">
	</form>


	<div class="w3-content" id="contentArea">
		<div class="body">
			<div class="table-wrap">
				<c:if test="${SID eq 'manager01'}">
					<div class="button1" style="margin: outo; width: 100px; heigth:100px; background-color:#f6755e; color:white;">공지사항 작성</div>
				</c:if>
				<table class="bbs center" summary="일반 게시판">
					<caption><h3>공지사항</h3></caption>
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
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody id="board_tbody">
						<c:forEach var="DATA" items="${LIST}">
							<tr class="first" id="${DATA.no}">
								<td class="td1">${DATA.no}</td>
								<td class="td2"style="text-align: left;">${DATA.title}</td>
								<td class="td3">${DATA.name}</td>
								<td class="td4">${DATA.ndate}</td>
								<td class="td5">${DATA.views}</td>
								<td class="file mmm1 last td6"><i class="fa fa-floppy-o"></i></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="" >
				<!-- 하단 정렬 시 margin-top 입력 -->
				<fieldset class="fs1">
					<select id="searched" name="searched" class="search1" style="width : 120px; display : inline-block; float : left;">
						<option value="title+content" selected="selected">제목+내용</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="user_name">글작성자</option>
					</select>
					<div class="text1">
						<input id="word" name="search_text" title="검색어" placeholder="검색어를 입력하세요" accesskey="s" type="text" alt="검색어" > 
					</div>	
					<div class="sbtn"> 
						<input type="button" id="schbtn" value="검색"/>
					</div>
				</fieldset>
			</div><br><br>
		</div>
	</div>
	
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>