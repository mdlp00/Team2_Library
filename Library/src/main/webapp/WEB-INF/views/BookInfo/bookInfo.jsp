<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
   
 body{
       padding: 50px 200px 200px 25%;
   
   }
   
   .btn{
      color: white;
      text-decoration:none;
   }
   
   .btn1{
   
   font-size:1.7em;
   font-weight: bold;
   
   }
   .info{
      width: 300px;
      height : 200px;
      text-align: letf;
   }
   
   .btnl{
         border : 1px solid #d5d5d5;
         border-radius: 5px;
         color : black;
         padding : 5px 10px;
         background : #f9f9f9;
   }
   
   .sview{
         margin-top : 10%;
   }
   
   ul li{font-size:12px; list-style:none; margin-left:160px;}
   
   
   .centerBox {
	    clear: both;
	    position: relative;
	    padding: 50px 300px 200px 300px;
	    border: 1px solid #dddddd;
	    border-top: 2px solid #434040;
	    color: #747474;
	    background: #fff!important;
	}
	
	.abtn{
		border : 1px solid #d5d5d5;
		border-radius : 3px;
		color: inherit;
    	text-decoration: none;
    	font-size : 20px;
    	padding : 10px 20px;
	}
	
	#a1{
		background-color : #f9f9f9;
	}
	#a2{
		background-color : #fe6d02;
		color : #fff;
	}
	#a3{
		background-color : #266ac4;
		color : #fff;
	}
	
	.border_t{
		border-top : 1px solid grey;
		border-bottom : 1px solid grey;
		padding : 15px 0px;
	}
	
	.h3_mg{
		margin-top : 50px;
		color : #1f5d97;
		font-weight : bold;
	}
	
	.Bcontent{
		padding-top : 7px;
	}
</style>

<script type="text/javascript">
$(document).ready(function() {
	
	// 예약버튼
	$('#a3').click(function(){
	
		if(${ bkVO.reserve_isshow eq 'N'}==true){
			alert('이미 예약되어 있는 책입니다.');
			return;
		}
		
		if(confirm('예약하시겠습니까?') == false) retrun;
		
		
		$.ajax({
			url: "bookReservation.bo",
			type: "POST",
			data: {
				"b_no" : "${bkVO.b_no}"
			},
			dataType: 'json',
			success: function(data){
				if(data.result=='success'){
					alert('예약이 완료되었습니다. 해당 도서를 가지고 카운터에서 대출하십시오.');
					location.href="bookInfo.bo?b_no=${bkVO.b_no}";
				}
			},
			error: function(){
				alert('통신에러!');
			}
		});
		
		
		
		
	});
});
</script>

</head>
<body class="subpage">
      <!-- Header -->
         <header id="header">
            <nav class="left">
               <a href="#menu"><span>Menu</span></a>
            </nav>
            <a href="index.html" class="logo"> Daye  Library</a>
            <nav class="right">
               <a href="#" class="button alt">Log in</a>
            </nav>
         </header>

      <!-- Menu -->
         <nav id="menu">
            <ul class="links">
               <li><a href="#"  class="btn1"> 메인페이지</a>
               </li>
   
               <li><a href="#" class="btn1" id="search" >자료검색</a>
                  <div class="subMenu">
                     <ul>
                         <li class= "search1" > <a href="#" class="w3-button btn " >주제별 자료검색</a></li>
                         <li class= "search1"> <a href="#" class="w3-button btn" >희망도서신청</a></li>
                         <li class= "search1"> <a href="#" class="w3-button btn" >대출 베스트</a></li>
                     </ul>
                  </div>

               <li><a href="#" class="btn1" id="a1">열린공간</a>
                     <ul>
                         <li class= "b1"> <a href="#" class="w3-button btn" >공지사항</a></li>
                         <li class= "b1"> <a href="#" class="w3-button btn" >자주하는 질문</a></li>
                         <li class= "b1" id="bb1"> <a href="#" class="w3-button btn" >좌석예약</a>
                           <ul>
                               <li class= "c1" > <a href="#" class="w3-button btn" >좌석예약</a></li>
                               <li class= "c1"> <a href="#" class="w3-button btn" >디지털 자료실 좌석예약</a></li>
                               <li class= "c1"> <a href="#" class="w3-button btn" >열람실좌석 예약현황</a></li>
                           </ul>
                         </li>
                     </ul>
               </li>
               <li><a href="#" class="btn1" id="a2">도서관안내</a></li>
                     <ul>
                         <li class= "b2"> <a href="#" class="w3-button btn" >도서관현황</a></li>
                         <li class= "b2" id="bb2"> <a href="#" class="w3-button btn" >이용안내</a></li>
                             <ul>
                               <li class= "c2"> <a href="#" class="w3-button btn" >이용시간 및 휴관일</a></li>
                               <li class= "c2"> <a href="#" class="w3-button btn" >회원가입 안내</a></li>
                               <li class= "c2"> <a href="#" class="w3-button btn" >시설이용 안내</a></li>
                               <li class= "c2"> <a href="#" class="w3-button btn" >자료이용 안내</a></li>
                                <li class= "c2"> <a href="#" class="w3-button btn" >오시는길</a></li>
                           </ul>
                     </ul>
            
               <li><a href="#" class="btn1" id="a3">마이라이브러리</a></li>
                   <ul>
                            <li class= "b3"> <a href="#" class="w3-button btn" >내서재</a></li>
                           <li class= "b3" > <a href="#" class="w3-button btn" >대출조회 및 연기</a></li>
                           <li class= "b3"> <a href="#" class="w3-button btn" >대출예약확인 및 취소</a></li>
                            <li class= "b3"> <a href="#" class="w3-button btn" >회원정보</a></li>
                     </ul>
                     
                  </ul>
               
            <ul class="actions vertical">
               <li><a href="#" class="button fit">Login</a></li>
            </ul>
         </nav>

	<!-- 도서 상세보기 틀  -->        
	<div class="centerBox">
	
		<!-- 그림이랑 같이 나오는 부분 -->
        <div style="background:#fffef9; width:100%; height:310px">
        	<div style="width:75%; margin:0 auto;">
        		<div style="background:#000; width:148px; height:227px; margin-top:40px; float:left;">
        			<img src="${bkVO.b_img}" style="width : 100%; height : 100%;" />
        		</div>
        		<h3 style="padding-top:60px; padding-left:180px; font-weight:bold; color:#000; line-height:28px; letter-sapcing:-0.5px;">${bkVO.b_name}</h3>
        		<ul>
        			<li class="Bcontent"><b>자료유형 : </b>${ bkVO.class_subject }</li>
        			<li class="Bcontent"><b>저자: </b>${ bkVO.b_writer }</li>        			
        			<li class="Bcontent"><b>출판사 : </b>${ bkVO.b_publisher }</li>        			
        			<li class="Bcontent"><b>가격 : </b>${ bkVO.b_price }</li>        			
        			<li class="Bcontent"><b>할인가 : </b>${ bkVO.b_discount }</li>        			
        			<li class="Bcontent"><b>발행일자 : </b>${ bkVO.b_pubdate }</li>        			
        			<li class="Bcontent"><b>ISBN : </b>${ bkVO.b_isbn }</li>        			
        		</ul>
        	</div>    
        </div>
        
        <!-- 소장위치 부분 -->
        <div>
			<h3 class="h3_mg">소장위치</h3>
			<table>
			
				<tr>
					<th>기관명</th>
					<th>자료실명</th>
					<th>ISBN</th>					
					<th>도서상태</th>					
					<th>대출예약</th>									
				</tr>
				
				<tr>
					<td>DayeLibrary</td>
					<td>종합자료2실(5층)</td>
					<td>${ bkVO.b_isbn }</td>					
					<td>${ bkVO.reserve_isshow eq 'Y' ? '대출가능' : '대출불가' }</td>				
					<td>${ bkVO.reserve_isshow eq 'Y' ? '예약가능' : '예약불가' }</td>															
				</tr>
				
			</table>
		</div>
		
		<!-- 버튼 부분 -->
		<div style="margin-bottom:20px; text-align: center;">
			<a href="bookSearchView.bo" class="abtn" id="a1"><i class="fa fa-list-ul" aria-hidden="true"></i><span> 목록으로</span></a>
			<a href="#" class="abtn" id="a2"><i class="fa fa-cart-arrow-down"></i><span> 관심도서담기</span></a>
			<a href="#" class="abtn" id="a3"><i class="fa fa-shopping-cart"></i><span> 예약하기</span></a>
		</div>
		
		<!-- 책소개 부분 -->
		<h3 class="h3_mg">책소개</h3>
		<div class="border_t">
			<div style="text-align: left;" class="book_info">
				<img src="${bkVO.b_img}"> ${bkVO.b_name} <br> ${bkVO.b_description}
			</div>
		</div>
		
		<!-- 저자소개 부분 -->
		<h3 class="h3_mg">저자소개</h3>
		<div class="border_t" style="text-align: left;">
						저자 : ${bkVO.b_writer }
		</div>
				
	</div>
	
	<!-- footer 부분 -->
	<jsp:include page="../Etc/footer.jsp" flush="false" />
</html>