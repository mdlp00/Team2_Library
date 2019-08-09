<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>QnA Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/w3.css" />
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<style type="text/css">
   body{
    padding: 50px 200px 200px 200px;
    margin-top : 10%;
   }
.btn {
	color: white;
	text-decoration: none;
}

.btn1 {
	font-size: 1.7em;
	font-weight: bold;
}

.faqArea {
	clear: both;
	margin: 0 auto;
	border-top: 2px solid #3970b8;
	border-bottom: 1px solid #d6d6d6;
}

.faq {
	margin: 0;
	padding: 0;
	list-style: none;
}

.faq .q {
	margin: 0;
	border-top: 1px solid #ddd;
}

.faq .q a.trigger {
	display: block;
	padding: 15px;
	color: #333;
	text-align: left;
	text-decoration: none !important;
	font-size: 14px;
}

.faq .q span {
	font-size: 14px;
	font-weight: bold;
	color: #e32c2c;
	margin-right: 5px;
}

.faq .hide .q a.trigger {
	background: none;
	font-size: 14px;
}

.faq .q a.trigger:hover {
	background: #f5fbfd;
	color: #e32c2c;
}

.faq .a {
	position: relative;
	margin: 0;
	padding: 10px 15px;
	line-height: 1.5;
	background: #fdfcf5;
	overflow: hidden;
	padding-bottom: 10px;
	padding-top: 10px;
	border-top: 1px dashed #ddd;
}

.faq .a .tit {
	font-size: 14px;
	font-weight: bold;
	color: #e32c2c;
	display: inline-block;
	width: 14px;
	position: absolute;
	top: 14px;
	left: 15px;
}

.faq .a .aContent {
 	margin-left: 25px;
	padding: 5px 0;

}

.faq .a .aContent p {
	line-height: 20px;
}

.faq .a .aContent span, .faq .a .aContent p, .faq .a .aContent strong {
	font-size: 13px !important;
}

.faq .goQna {
	width: 650px;
	padding: 10px 0 10px 35px;
	margin: 10px 0 7px 25px;
	border: 1px dashed #ccc;
	background: url('/resources/board/img/ico_tip.gif') #fff no-repeat 10px
		12px;
	font-size: 13px;
	font-weight: bold;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
}

.faq .goQna span {
	vertical-align: top;
	margin-right: 7px;
	font-size: 13px;
}

.faq .q.blue span {
	color: #2e91ed;
}

.faq .q.blue a.trigger:hover, .faq .q.blue a.trigger:active, .faq .q.blue a.trigger:focus
	{
	color: #2e91ed;
}

.faq .a.blue .tit {
	color: #2e91ed !important;
}

.aContent font {
	font-size: 14px !important;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {

	});

	$(function() {
		var article = $('.faq .article');
		article.addClass('hide');
		article.find('.a').slideUp(100);

		$('.faq .article .trigger').click(function(e) {
			e.preventDefault();
			var myArticle = $(this).parents('.article:first');
			if (myArticle.hasClass('hide')) {
				article.addClass('hide').removeClass('show');
				article.find('.a').slideUp(100);
				myArticle.removeClass('hide').addClass('show');
				myArticle.find('.a').slideDown(100);
			} else {
				myArticle.removeClass('show').addClass('hide');
				myArticle.find('.a').slideUp(100);
			}
		});

		$('.faq .hgroup .trigger').click(function(e) {
			e.preventDefault();
			var hidden = $('.faq .article.hide').length;
			if (hidden > 0) {
				article.removeClass('hide').addClass('show');
				article.find('.a').slideDown(100);
			} else {
				article.removeClass('show').addClass('hide');
				article.find('.a').slideUp(100);
			}
		});

		$('div.tabmenu a').on('click', function(e) {
			e.preventDefault();
			var url = 'index.do';
			$('#viewPage').attr('value', '1');
			$('input#category1').attr('value', $(this).attr('keyValue'));
			var formData = serializeCustom($('form#board'));
			doGetLoad(url, formData);
		});
	});

	var $form = $('#board');

	$('a#board_edit_btn').on('click', function(e) {
		e.preventDefault();
		var url = 'edit.do';
		var formData = serializeCustom($form);
		doGetLoad(url, formData);
	});

	$('#board_tbody a').on(
			'click',
			function(e) {
				e.preventDefault();

				if ($(this).data('prompt_yn') == 'Y') {
					var password = prompt('비밀번호를 입력하세요.');
					var beforeAction = $('#board').attr('action');
					if (password == null || password == '') {
						return false;
					}
					$('#board_idx').val($(this).attr('keyValue'));
					var url = 'view.do';
					var formData = serializeCustom($('#board'))
							+ '&user_password=' + encodeURIComponent(password);
					doGetLoad(url, formData);
				} else {
					var isIntegration = $(this).attr('integration');
					if (isIntegration) {
						doGetLoad($(this).attr('href'));
					} else if ($(this).attr('podcast')) {
						var openNewWindow = window
								.open($(this).attr('podcast'));
					} else {
						$('#board_idx').val($(this).attr('keyValue'));
						var url = 'view.do';
						var formData = serializeCustom($form);
						doGetLoad(url, formData);
					}
				}

			});

	$(
			'select#category1, select#category2, select#category3, select#category4, select#category5')
			.on('change', function() {
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

	
</script>
</head>
<body class="subpage">
	<!-- Header -->
	<jsp:include page="../Etc/listbar.jsp" />
	
	<!-- 가운데 부분 시작 -->
	<div class="content">
		<div class="doc">
			<div class="doc-head">
				<div class="doc-title">
					<h3>자주하는질문</h3>
				</div>
			</div>
			<div class="doc-body" id="contentArea">
				<div class="body">

						<div class="wrapper-bbs">
							<div class="faqArea">
								<ul class="faq">
									
									<!-- 첫번쨰 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 무선인터넷 이용 방법
												안내</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
												무선인터넷 이용 방법 안내입니다.<br><br>
												1. 우리 도서관 홈페이지에서 회원가입 후<br>
												2. (무선네트워크 아이디)increpas를 연결하고<br>
												3. (무선네트워크 비밀번호)increpas를 입력합니다.<br>
												<br>
												이용문의: 데스크
											</div>
										</div>
									</li>

									<!-- 두번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 동대문도서관 홈페이지 로그인이 안될 때</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
								도서관 홈페이지 보안강화로 <br>
								Window XP SP2(서비스 팩2) 이하 버전 사용자는 Window XP SP3(서비스팩3)로 <br>
								업그레이드 하여야 도서관 홈페이지 로그인을 할 수 있습니다.<br>
								■ 로그인 오류 현상<br>
								"웹페이지를 투시할 수 없습니다” 라는 메시지 보임<br>
								■ 조치방법<br>
								"Windows XP SP3로 설치<br>
								■ Windows XP SP3 설치 방법<br>
								아래 사이트에서 수동으로 파일 다운로드 및 설치<br><br>
								[ Windows Update 사이트 ]<br>
								http://Update.microsoft.com<br>
								[서비스팩 다운로드 센터]<br>
								http://windows.microsoft.com/ko-KR/windows/downloads/service-packs
											</div>
										</div>
									</li>

									<!-- 세번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 복사는 어떻게 하나요</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
										자료의 복사는 도서 전체는 안되며 저작권을 침해하지 않는 범위 내에서 자료실 복사기에서 복사하실 수 있습니다.<br>
										도서관 자료 이외의 자료는 복사하실 수 없습니다.<br>
										복사는 직접 하시면 되며 B4, A4 사이즈 모두 가능합니다.<br>
										복사비는 A4는 30원, B4는 50원 이며, 흑백만 가능합니다.<br>
										복사카드는 따로 구매하지 않으셔도 되며 동전 또는 천원권 지폐를 넣고 복사하시면 됩니다.<br>
											</div>
										</div>
									</li>

									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 대출한 도서를
												반납예정일보다 늦게 반납한 경우 대출을 할 수 없나요?</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
						서울시립도서관 및 평생학습관(22개) 통합 이용 규정에 의거하여 도서 반납을 연체한 경우 연체료 납부와 대출정지 중에서 선택할 수 있습니다.<br>
						① 대출자료의 반납을 연체하였을 때에는 1책당 1일 100원의 연체료를 부과하되, 부과금액이 해당자료의 시가를 초과할 수 없다.<br>
						예) 4권 2일 연체시 → 4권× 2일× 100원=800원 연체료부과<br>
						② 연체료를 납부하지 않을 경우에는 사유가 발생한 날부터 1책당 연체일 수 만큼 대출을 일시 정지하되, 대출정지기간은 1년 이내로 한다.<br>
						예) 4권 2일 연체시 → 4권× 2일=8일 정지
											</div>
										</div>
									</li>

									<!-- 네번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 디지털자료실에서 프린터 할 수 있나요</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
								디지털 자료실 모든 PC에서 출력이 가능합니다. 출력은 A4 크기의 흑백만 가능하며 1장당 50원 입니다.<br>
								단, 노트북 코너에서는 프린터를 이용하실 수 없습니다.
											</div>
										</div>
									</li>

									<!-- 다섯번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span>도서관에 소장되어 있지 않은 자료를 구입신청할 수 있나요?</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
								홈페이지 "희망도서신청"코너에서 신청이 가능합니다. 자료선정위원회 심의를 거쳐 희망도서를 구입하고 있으며, "희망도서선정기준"에 따라 제외될 수도 있습니다.
											</div>
										</div>
									</li>

									<!-- 여섯번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 책을 기증하고 싶은데
												어떻게 하나요?</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
								저희 도서관에서는 도서 발행 5년 이내의 도서에 한해 기증 받고 있습니다.<br>
								기증도서 중 도서관에 이미 소장중인 도서는 매년 4월 도서관 주간 책나눔 행사 시 이용될 수 있습니다.<br>							
								도서를 기증하시고자 하는 분은 3층 정보자료과 사무실로 가져오시면 됩니다.
											</div>
										</div>
									</li>

									<!-- 일곱번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span>동일한 도서를 반납 후 제대출하고 싶습니다. 가능한가요?</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
											동일도서의 재대출은 예약자가 없는 경우에 즉시 대출 가능합니다.
											</div>
										</div>
									</li>

									<!-- 여덞번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span>검색한 자료가 "대출가능"상태인데 서가에 없는 경우 어떻게 된 것인가요?</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
						이용자가 도서관내에서 이용중인 경우, 배열이 잘못되어 있는 경우, 파손도서로 수리중인 경우 등이 있을 수 있습니다.<br>
						 해당 자료실의 담당사서에게 문의하시면 찾으시는 자료에 대한 도움을 받으실 수 있습니다.
											</div>
										</div>
									</li>

									<!-- 아홉번째 질문 -->
									<li class="article hide">
										<div class="q blue">
											<a class="trigger" href="#"><span>Q.</span> 무선 인터넷 사용이
												가능한가요?</a>
										</div>
										<div class="a" style="display: none;">
											<span class="tit">A.</span>
											<div class="aContent">
									우리 도서관 4층, 5층(종합자료1실, 2실)의 정해진 자리에서 와이파이를 이용한 무선인터넷 이용이 가능합니다.<br>
									우리 도서관 홈페이지에서 준회원 이상으로 가입 후 이용하시면 됩니다.<br>
									네트워크 키는 대출대에 문의하세요..
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<jsp:include page="../Etc/footer.jsp" />
</body>
</html>