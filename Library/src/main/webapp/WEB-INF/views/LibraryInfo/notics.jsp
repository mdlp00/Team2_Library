<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Generic - Intensify by TEMPLATED</title>
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


	.p{
	color : white;
	}
table.bbs tr.notice{background:#f5f6f7}
	@media (max-width: 430px) and (min-width: 0px) {
	table.bbs col.col2 {
	    width : 1%
	}
	td.title{width: 100%;float:left;border-bottom: none;margin-bottom: -5px;}
	td.username{float:left;display: table-cell !important;border-top: none;font-size: 12px !important;}
	td.adddate{float:left;display: table-cell !important;border-top: none;font-size: 12px !important;}
	td.viewCount{float:left;display: table-cell !important;border-top: none;font-size: 12px !important;}
	table.bbs tbody tr:hover {background:#f8f8f8}
	td.txtBar{display: inline-block;width: 1px;height: 10px;font-size: 0px;line-height: 0;text-indent: -9999px;vertical-align: top;margin: 3px 5px;background: rgb(217, 217, 217);}
}


</style>
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

	<!-- Banner -->
	<section id="banner" style="background-image:url('${pageContext.request.contextPath}/resources/img/MainP.jpg');">
		<div class="content p" style="font-weight: bold;" >
			<div style="font-weight: bold;">
			<h1 style="color: #11CFE5;">Live always in the best company when you read</h1>
				<p>독서할 때 당신은 항상<br>가장 좋은 친구와 함께 있다.</p>
			<ul class="actions">
				<li><a href="#one" class="button scrolly">Library Guide Start</a></li>
			</ul>
			</div>
		</div>
	</section>
	
<div class="doc-body" id="contentArea">
                                    <div class="body">

<script type="text/javascript">
$(document).ready(function() {
	var $form = $('#board');

	
	
	
	
	$('a#board_edit_btn').on('click', function(e) {
		e.preventDefault();
		var url = 'edit.do';
		var formData = serializeCustom($form);
		doGetLoad(url, formData);
	});
	
	

	
		
		
	
	$('#board_tbody a').on('click', function(e) {
		e.preventDefault();

		
		
		
		if ( $(this).data('prompt_yn') == 'Y' ) {
   			var password = prompt('비밀번호를 입력하세요.');
       		var beforeAction = $('#board').attr('action');
       		if ( password == null || password == '' ) {
       			return false;
       		}
			$('#board_idx').val($(this).attr('keyValue'));
			var url = 'view.do';
			var formData = serializeCustom($('#board'))+'&user_password='+encodeURIComponent(password);
			doGetLoad(url, formData);
   		} else {
			var isIntegration = $(this).attr('integration');
			if (isIntegration) {
				doGetLoad($(this).attr('href'));
			} else if ($(this).attr('podcast')) {
				var openNewWindow = window.open($(this).attr('podcast'));
			} else {
				$('#board_idx').val($(this).attr('keyValue'));
				var url = 'view.do';
				var formData = serializeCustom($form);
				doGetLoad(url, formData);
			}
   		}
		
		


	});
		
	

	$('select#category1, select#category2, select#category3, select#category4, select#category5').on('change', function() {
		var url = 'index.do';
		$('#viewPage').attr('value', '1');
		var formData = serializeCustom($form);
		doGetLoad(url, formData);
	});

	$('select#sortField, select#sortType').on('change', function() {
		var url = 'index.do';
		$('#viewPage').attr('value', '1');
		var formData = serializeCustom($form);
		doGetLoad(url, formData);
	});
	
	$('#selectType').on('click', function() {
		var obj = $('form#board');
		var url = obj.attr('action');
		var formData = serializeCustom($form);
		doGetLoad(url, formData);
	});

	
});
</script>

<form id="board" action="index.do" method="get" onsubmit="return false;">


<input id="menu_idx" name="menu_idx" type="hidden" value="47">
<input id="manage_idx" name="manage_idx" type="hidden" value="583">
<input id="board_idx" name="board_idx" type="hidden" value="0">

<input id="module" name="module" type="hidden" value="">

<div class="wrapper-bbs">
	




<div class="infodesk">
	
	
	
	
	<span class="bbs-result">총 게시물 : <b>18 </b>건</span>
		<select id="rowCount" name="rowCount" class="selectmenu" style="width:110px;" title="보기 개수 선택">
		
		
		
			<option value="10" selected="selected">10개씩 보기</option>
		
			<option value="20">20개씩 보기</option>
		
			<option value="30">30개씩 보기</option>
		
			<option value="40">40개씩 보기</option>
		
			<option value="50">50개씩 보기</option>
		
		
		</select>
		<a href="#" class="btn btn1" id="selectType">이동</a>
	</div>
</div>
	<div class="table-wrap">
	
		<table class="bbs center" summary="일반 게시판">
			<caption>이용규정게시판</caption>
			<colgroup>
				
				<col width="10%" class="col1">
				<col class="col2">
				<col width="12%" class="col3">
				<col width="10%" class="col4">
				<col width="10%" class="col5">
				<col width="10%" class="col6">
			</colgroup>
			<thead>
				<tr class="first">
					
					<th class="first th1">번호</th>
					<th class="mobile-title th2">제목</th>
					<!-- <th>처리상태</th> -->
					<th class="mmm2 mobile-title th3">작성자</th>
					<th class="mobile-num th4">작성일</th>
					<th class="mmm1 th5">조회수</th>
					<th class="mmm1 last th6">파일</th>
				</tr>
			</thead>
			<tbody id="board_tbody">
			
			
				<tr class="first">
					
					<td class="num first td1">18</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="1154274" data-prompt_yn="N">
						
							
							<span>동대문도서관 CCTV 운영 규정(2019.5.9. 개정 시행)</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">유제황</td>
					<td class="important num mobile-num td4">2019.06.14</td>
					<td class="num mmm1 td5">31</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">17</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="1130692" data-prompt_yn="N">
						
							
							<span>동대문도서관 문화교실 운영 규정(18.12.4. 일부개정)</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보리</td>
					<td class="important num mobile-num td4">2018.12.07</td>
					<td class="num mmm1 td5">203</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">16</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="212993" data-prompt_yn="N">
						
							
							<span>동대문도서관자료교환및이관및제적및폐기규정 (2017.11.22)</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2017.11.22</td>
					<td class="num mmm1 td5">314</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">15</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="213082" data-prompt_yn="N">
						
							
							<span>문화교실 운영규정</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2016.10.21</td>
					<td class="num mmm1 td5">218</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">14</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="212992" data-prompt_yn="N">
						
							
							<span>홈페이지 이용규정</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2016.10.21</td>
					<td class="num mmm1 td5">182</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">13</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="213081" data-prompt_yn="N">
						
							
							<span>동대문도서관 이용규정 9차 개정</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2016.10.21</td>
					<td class="num mmm1 td5">1618</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">12</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="213080" data-prompt_yn="N">
						
							
							<span>동대문도서관 자료선정위원회 규정(2015.11. ) 개정</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2015.11.10</td>
					<td class="num mmm1 td5">258</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">11</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="212990" data-prompt_yn="N">
						
							
							<span>동대문도서관 이용서비스헌장 심의위원회 운영 규정(3차 개정2015)</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2015.04.23</td>
					<td class="num mmm1 td5">185</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">10</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="213079" data-prompt_yn="N">
						
							
							<span>동대문도서관 이용규정(2015.02.03)</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2015.03.11</td>
					<td class="num mmm1 td5">1803</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
				<tr>
					
					<td class="num first td1">9</td>
					<td class="important left mobile-title td2" style="padding-left:10px;">
						<a href="" keyvalue="212989" data-prompt_yn="N">
						
							
							<span>동대문도서관 자료선정위원회 규정</span>
							
							
						</a>
					</td>
					<td class="mmm2 mobile-num td3">정보자료과</td>
					<td class="important num mobile-num td4">2014.10.30</td>
					<td class="num mmm1 td5">148</td>
					<td class="file mmm1 last td6">
					
						<i class="fa fa-floppy-o"></i>
					
					</td>
				</tr>
			
			</tbody>
		</table>
		
		
		
	</div>

	




<div class="button bbs-btn right" style="clear: both;">


	
	
		
		

</div>
	
	




<input id="viewPage" name="viewPage" type="hidden" value="1">
<div id="board_paging" class="dataTables_paginate">

	
	<span>


	
	<a href="" class="paginate_button current" keyvalue="1">1</a>







	<a href="" class="paginate_button" keyvalue="2">2</a>





	</span>
</div>

<div class="search txt-center mmm2" style="margin-top:25px;"><!-- 하단 정렬 시 margin-top 입력 -->
	<fieldset>
		<label class="blind" for="search_type">검색조건</label>
		<select id="search_type" name="search_type" class="selectmenu" style="width:100px;">
			<option value="title+content" selected="selected">제목+내용</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
			<option value="user_name">글작성자</option>
		</select>
		<label class="blind" for="search_text">검색어입력</label>
		<input id="search_text_board" name="search_text" class="text" style="ime-mode:active;" title="검색어" placeholder="검색어를 입력하세요" accesskey="s" type="text" value="" alt="검색어">
		<label for="search_text_board" class="blind">검색어</label>
		<a href="" class="btn btn1" id="board_btn_search"><i class="fa fa-search"></i><span>검색</span></a>
	</fieldset>
</div>

<script type="text/javascript">
$(document).ready(function() {
	$('div#board_paging a').on('click', function(e) {
		$('#viewPage').attr('value', $(this).attr('keyValue'));
		var param = serializeCustom($('#board'));
		var obj = $('form#board');
		var url = obj.attr('action');
		doGetLoad(url, param);
		e.preventDefault();
	});
	
	$('a#board_btn_search').on('click', function(e) {
		e.preventDefault();
		$('#viewPage').attr('value', '1');
		var param = serializeCustom($('#board'));
		var obj = $('form#board');
		var url = obj.attr('action');
		doGetLoad(url, param);
	});
	
	$('input#search_text_board').keyup(function(e) {
		e.preventDefault();
		if(e.keyCode == 13) {
			$('#viewPage').attr('value', '1');
			var param = serializeCustom($('#board'));
			var obj = $('form#board');
			var url = obj.attr('action');
			doGetLoad(url, param);
		}
	});
});
</script>
</form>

                                    </div>
                                </div>
</body>
</html>