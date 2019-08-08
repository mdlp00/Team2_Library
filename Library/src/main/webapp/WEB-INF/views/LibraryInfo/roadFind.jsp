<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Welcome to Library Guide Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
	body {
		padding: 50px 200px 200px 400px;
	}
	
	.doc-title {
		zoom: 1;
		word-break: break-all;
		letter-spacing: -1px;
		font-weight: bold;
		color: #333;
		margin: 0px 0px 30px;
		line-height: 30px;
		border-bottom: 1px solid #e66e63;
	}
	.hhh3 {
		font-weight: bold;
		color: #333;
		font-size: 40px;
		max-width: 500px;
		padding: 20px;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body class="subpage">
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- 오시는길-->
	<div class="w3-content">
		<div class="doc-head">
			<div class="doc-title">
				<h3 class="hhh3">오시는길</h3>
			</div>
		</div>
		<img src="${pageContext.request.contextPath}/resources/img/road.PNG" >
	</div>
	
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>