<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   
</style>

<script type="text/javascript">
$(document).ready(function() {

    //[1] 기본값 설정
   // 자료검색 버튼
    $(".search1").hide(); //하단

  
    $("#search").click(function() {
        $(".search1").toggle();
    });
    
    
   // 열린공간 버튼
    $(".b1").hide(); //하단

  
    $("#a1").click(function() {
        $(".b1").toggle();
    });
    
       $(".c1").hide(); //하단
   
     
       $("#bb1").click(function() {
           $(".c1").toggle();
       });
    
   // 도서관 안내 버튼
    $(".b2").hide(); //하단

  
    $("#a2").click(function() {
        $(".b2").toggle();
    });
       
       $(".c2").hide();
   
     
       $("#bb2").click(function() {
           $(".c2").toggle();
       });
    
   // 마이라이브러리
    $(".b3").hide(); //하단

  
    $("#a3").click(function() {
        $(".b3").toggle();
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




<div class="sview">
      <div class="sinfo" style="margin-bottom:40px;">
         <div class="thumb mbImg">

            <p>
               <img src="http://image.aladin.co.kr/product/53/67/cover/895660102x_2.jpg" alt="공중그네 : 오쿠다 히데오 장편소설" style="height: 225px">
            </p>
               
            
         </div>
         <div class="info">
            <ul>
               <li style="line-height: 150%;">
                  <b id="bookTitleInfo">공중그네 : 오쿠다 히데오 장편소설</b>
               </li>
               <li>자료유형 : 일반자료</li>
               <li>저자 : 오쿠다 히데오 지음 ; 이영미 옮김</li>
               <li>발행사항 : 은행나무, 2013</li>
               <li>주제분류 : 833.6</li>
                <br>
               <a id="goBack" class="btn2" style="text-decoration:none"><span class="btnl"><i class="fa fa-bars"></i><b>&nbsp;목록</b></span></a>
<!--                   <a href="" class="btn"><span>자세히보기</span><i class="fa fa-sort-down"></i></a> -->
 
            </ul>
         </div>
      </div>
      <h4>소장위치</h4>
      <ul class="mbDetail" id="position">

               <li class="txt-left">기관명 : 동대문도서관</li>
               <li class="txt-left">자료실명 : [동대문]종합자료2실(5층)</li>
               <li class="txt-left">청구기호 : 833.6-ㅇ464ㄱ=3</li>
               <li class="og">등록번호 : EMK000309563</li>
               <li>도서상태 :

                        대출가능

               </li>
               <li>   <!-- bookDetailList.loan_non_day_start 와 bookDetailList.loan_non_day_end 사잇 값이 아닐때 대출 가능 -->
                  대출예약 :

                     <p style="    height: 14px; line-height: 12px;" keyvalue1="5194664068" keyvalue2="MK" keyvalue3="MO" keyvalue4="loan" keyvalue5="833.6">예약불가</p>

                        <a href="#" class="btn loan_resve og" keyvalue1="5194664068" keyvalue2="MK" keyvalue3="MO" keyvalue4="night" keyvalue5="833.6" keyvalue6="K02">야간 대출예약</a>

               </li>

            
      </ul>

      <table summary="도서 상태 및 등록 정보" id="position" class="pcDetail">
         <colgroup>
               <col style="width:12%" class="col1">
               <col style="width:18%" class="col2">
               <col style="width:15%" class="col3">
               <col style="width:16%" class="col4">
               <col style="width:10%" class="col5">
               <col style="width:14%" class="col7">
         </colgroup>
         <thead>
            <tr class="first">
               <th style="text-align: center" class="first th1">기관명</th>
               <th style="text-align: center" class="th2">자료실명</th>
               <th style="text-align: center" class="th3">청구기호</th>
               <th style="text-align: center" class="th4">등록번호</th>
               <th style="text-align: center" class="th5">도서상태</th>
               <th style="text-align: center" class="th6">대출예약</th>
               <th style="text-align: center" class="last th7">택배대출</th>
            </tr>
         </thead>
         <tbody>
            <tr class="first">
               <td class="txt-left first td1">동대문도서관</td>
               <td class="txt-left td2">[동대문]종합자료2실(5층)</td>
               <td class="txt-left td3">833.6-ㅇ464ㄱ=3</td>
               <td class="og td4">EMK000309563</td>
               <td class="td5">
                  
                  
                        대출가능
                        
                  
               </td>
               <td style="line-height: 0px;text-align: center" class="td6">   <!-- bookDetailList.loan_non_day_start 와 bookDetailList.loan_non_day_end 사잇 값이 아닐때 대출 가능 -->
                     <p style="    height: 14px; line-height: 12px;" keyvalue1="5194664068" keyvalue2="MK" keyvalue3="MO" keyvalue4="loan" keyvalue5="833.6">예약불가</p>
                  <a href="#" class="btn loan_resve og" keyvalue1="5194664068" keyvalue2="MK" keyvalue3="MO" keyvalue4="night" keyvalue5="833.6" keyvalue6="K02">야간 대출예약</a>
      
               </td>
               <td style="text-align: center;" class="last td7">

               </td>
            </tr>

         </tbody>
      </table>
      <div class="sbtn mbBtn" style="margin-bottom:20px;">
         <a href="" class="btn btn1 addStorage"><i class="fa fa-cart-arrow-down"></i><span>관심도서담기</span></a>
         <a href="" class="btn btn2 goStorage" style="display:none;"><i class="fa fa-shopping-cart"></i><span>관심도서보기</span></a>
         
      </div>

      
      <h4>책소개</h4>
      <table summary="책소개" class="aladinDetail-table">
         <tbody>
            <tr class="first">
               <td style="text-align: left;" class="aladinDetail-td first last td1">공중그네 - 오쿠다 히데오 지음, 이영미 옮김 <br> 131회 나오키상 수상작. 어딘가 수상해보이는 정신과 병원을 배경으로, 이라부 박사와 여러 환자들이 벌이는 요절복통 사건들이 그려진다. 크고 작은 강박증 하나쯤 지니고 살아가는 현대인들에게, 툭툭 털고 일어나 앞으로 나아가도록 용기를 주는 즐거운 작품.</td>
            </tr>
         </tbody>
      </table>
      <br>
      <br>
      

      
      
      <h4>저자소개</h4>
      <table summary="저자소개">
         <tbody>
            <tr class="first">
               <td style="text-align: left;" class="first last td1">

                     저자 : 오쿠다 히데오<br>
                  
                     역자 : 이영미<br>

               </td>
            </tr>
         </tbody>
      </table>
      <br>
      <br>
      
   </div>

   
   <jsp:include page="${pageContext.request.contextPath}/Etc/footer.jsp"></jsp:include> 
</html>