<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Join Guide Page</title>
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
		padding: 100px 150px 100px 25%;
	}
	body, h3, ul, li, strong {
		margin: 0;
		padding: 0;
		letter-spacing: -1px;
	}
	ul {
		display: block;
		margin-block-start: 1em;
		margin-block-end: 1em;
		margin-inline-start: 0px;
		margin-inline-end: 0px;
		padding-inline-start: 40px;
	}
	
	.doc-head {
		overflow: hidden;
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
	.doc-body {
		color: #666;
		line-height: 150%;
		padding-top: 20px;
	}
	.doc-body {
		color: #666;
		line-height: 150%;
		padding-top: 20px;
	}
	.doc-body ul.con > li > ul {
		padding: 3px 0;
	}
	.doc-title {
		border-bottom: 1px solid #e66e63;
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
					<h3 style="font-size: 40px; max-width: 500px; padding: 20px;">회원 가입 안내</h3>
				</div>
			</div>
		</div>
		<div class="doc-body" id="contentArea">
			<div class="body">
				<ul class="con" style="margin-top:30px;">
					<li><strong class="contener"> 가입자격</strong></li>
					<ul>
						<li>
						"주민등록상 서울특별시 거주자"
						<br>
						"(단, 직장이나 학교가 서울인 타지역 거주자는 재직증명서나 재학증명서나 재학증명서 제시)"
						</li>
					</ul>
					<li>
						<strong>가입방법</strong>
						<ul>
							<li>홈페이지 신규 회원가입->도서관 방문->본인 확인(서류지참)->회원증발급</li>
						</ul>
					</li>
					<li>
						<strong>구비서류</strong>
						<ul>
							<li>성인: 신분증 또는 신분증과 서울시 재직/재학증명서</li>
							<li>청소년: (생년월일과 주소가 기재된)신분증 또는 주민등록등본</li>
							<li>어린이: 주민등록등본 또는 의료보험증과 부모님 신분증</li>
							<li>외국인: 외국인등록증 또는 국내거소신고증</li>
						</ul>
					</li>
					<li><strong>22개 서울특별시교육청 공공도서관 평생학습관 회원증 소지자는 즉시 이용가능</strong></li>
					<li>
						<strong>회원증 재발급</strong>
						<ul>
							<li> 회원 증 최초 발급은 무료이나 재발급 시 수수료 부과</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>