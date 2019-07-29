<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />

<style type="text/css">

#myfooter {
    position : absolute !important; 
    bottom : -100 !important;
    width : 100% !important;
    height : 150px !important;
    float : left !important;
    font-size : 12px !important;
    border-top : 2px solid gray !important;
    
}  

.divimg{
   height : 100% !important;
   width : 150px !important;
   float : left !important;
   margin-left : 10% !important;
}

.divtext{
   height : 100% !important;
   float : left !important;
   padding-left :10px !important;
   padding-top : 1.5% !important;
   line-height : 2.8em !important;
}
 
.divinline{
   display : inline-block !important;
   height : 100% !important;
}

#dimg{
   height : 100% !important;
}

.s1{
   display : block !important;
}

</style>

</head>
<body>
   <div id="myfooter"> 
      <div class="divimg divinline"> 
         <img src="${pageContext.request.contextPath}/resources/img/Logo.png" id="dimg" />
      </div>
      <div class="divtext divinline">
         <span class="s1"><b>우편번호 : </b>서울특별시 관악구 서울특별시 관악구 조원용 1655-24</span>
         <span class="s1"><b>대표전화 : </b>02-114-1112</span>
         <span class="s1">Copyright ⓒ 2019 Daye's stupid Library. All Rights kimyerim.</span>
      </div>
   </div>
</body>
</html>