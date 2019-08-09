<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>책 검색</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">

	.btn{
		color: white;
		text-decoration:none;
	}
	
	.btn1{
	
	font-size:1.3em;
	font-weight: bold;
	
	}
	.aa{
	width: 50px;
	
	}
	
	.ta{
		text-align : center;
	}
	
.searchBox {
    clear: both;
    position: relative;
    padding: 50px 300px 200px 300px;
    border: 1px solid #dddddd;
    border-top: 2px solid #434040;
    color: #747474;
    background: #fff!important;
}
	

	


/* 가져온 style */
        body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
        body,input,textarea,select,table{font-family:'돋움',Dotum,AppleGothic,sans-serif;font-size:12px}
        img,fieldset{border:0}
        ul,ol{list-style:none}
        em,address{font-style:normal}
        a{text-decoration:none}
        a:hover,a:active,a:focus{text-decoration:underline}
        .search_book {margin: 10px;}
        .result{ margin: 20px;}
        .srch{width:100%;padding:5px 0; margin: 0px 10px;}
        .srch legend{overflow:hidden;visibility:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:0;line-height:0}
        .srch{color:#c4c4c4;text-align:left}
        .srch select,.srch input{margin:-1px 0 1px;font-size:12px;color:#373737;vertical-align:middle}
        .srch .keyword{margin-left:1px;padding:2px 3px 5px;border:1px solid #b5b5b5;font-size:12px;line-height:15px}
        .tbl_type,.tbl_type th,.tbl_type td{border:0}
        .tbl_type{width:100%;border-bottom:2px solid #dcdcdc;font-family:Tahoma;font-size:11px;text-align:center}
        .tbl_type caption{display:none}
        .tbl_type th{padding:7px 0 4px;border-top:2px solid #dcdcdc;background-color:#f5f7f9;color:#666;font-family:'돋움',dotum;font-size:12px;font-weight:bold}
        .tbl_type td{padding:6px 0 4px;border-top:1px solid #e5e5e5;color:#4c4c4c} 	
	
</style>

<script type="text/javascript">
$(document).ready(function() {
	$('#search_btn').click(function(){
		search_book(1);
    	//$('#non').html('');
    	/* var kind = $('#kind').val();
    	var search = $('#search_txt').val();
    	
      	$.ajax({
    		url: "bookSearch.bo",
			type: "POST",
			data: {
				"page" : 1,
				"kind" : kind,
				"search" : search
			},
			success: function(data){
			     $('#search_result').html(data);	
			}
    	}); */
    });
}); 
function search_book(page){
	//$('#non').html('');
	var kind = $('#kind').val();
	var search = $('#search_txt').val();
	
  	$.ajax({
		url: "bookSearch.bo",
		type: "POST",
		data: {
			"page" : page,
			"kind" : kind,
			"search" : search
		},
		success: function(data){
		     $('#search_result').html(data);
		     
		    // 책리스트 선택
		    $('.book_select').click(function(){
		     	b_no = $(this).attr('id');
		    	$('#b_no').val(b_no);
		    	$('#frm').attr('action','bookInfo.bo');
		    	$('#frm').submit();
		    });
		},
		error: function(){
			alert('통신에러!');
		}
		
	});
	
}
    // 검색버튼 비동기 처리
   /*  $('#search_btn').click(function(){
    	$('#non').html('');
    	var kind = $('#kind').val();
    	var search = $('#search_txt').val();
    	
      	$.ajax({
    		url: "bookSearch.bo",
			type: "POST",
			dataType: "json",
			data: {
				"page" : page,
				"kind" : kind,
				"search" : search
			},
			success: function(data){
				
				for(var i=0; i<data.length; i++){
					var dno = data[i].b_no;
					var dname = data[i].b_name;
					var dwriter = data[i].b_writer;
					var dpublisher = data[i].b_publisher;
					var dimg = data[i].b_img;
					var ddescription = data[i].b_description;
					
					$('#non').prepend(
									 '<tr class="book_select" id="'+ dno +'">' +
									 '<td><img src=' + dimg + 'width="50px" height="70px" /></td>\n' +
									 '<td>' + dname +'</td>\n' +
									 '<td>' + dwriter + '</td>\n' +
									 '<td>' + dpublisher + '</td>\n' + 
									 '<td>' + ddescription + '</td>\n' +
									 '</tr>'
									 );
				}
				
			    // 책리스트 선택
			    $('.book_select').click(function(){
			     	b_no = $(this).attr('id');
			    	$('#b_no').val(b_no);
			    	$('#frm').attr('action','bookInfo.bo');
			    	$('#frm').submit();
			    });
				
			},
			error: function(){
				alert('통신에러!');
			}
    	});  
    });
    
     */
</script>
</head>
<body class="subpage">
 	<form method="POST" action="bookSearch.bo" id="frm" name="frm">
		<input type="hidden" name="nowPage" id="nowPage">
		<input type="hidden" name="kind" id="kind">
		<input type="hidden" name="searched" id="searched">
		<input type="hidden" name="b_no" id="b_no">
	</form>
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />

	<!-- Body -->
	<div class="searchBox">
		<div class="keywordBox">
			<div class="searchSelect">
				<label for="searchField" style="font-size: 40px; text-align:center;">자료검색</label>
				<select id="kind" name="kind">
					<option value="all">전체</option>
					<option value="name">책이름</option>
					<option value="writer">저자</option>
					<option value="publisher">출판사</option>
					<option value="description">요약내용</option>
				</select>
			</div>
			<div class="keywordWrap">
				<div class="searchKey">
					<label for="search_text" class="hidden"></label>
					<input id="search_txt" name="search_txt" style="ime-mode:active;" placeholder="검색어를 입력하세요." type="text" class="text">
				</div>
			</div>
			<!-- 검색 버튼 -->
			<button id="search_btn" name="search_btn" style="margin:10px 0">검색</button>
			<br>
		</div>
		<div id="autoFill"></div>
		
		<!-- 책 검색 리스트 -->
		<div id="search_result">
		</div> 
		<!-- 책 검색 리스트 -->        
        <!-- <table cellspacing="0" border="1" summary="책검색  결과" class="tbl_type">
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

                </tbody>
        </table> -->
	</div>

	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>