
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8"	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page session="true"%>

<!doctype html>
	
<html lang="kr">
    <head>
        <meta name="format-detection" content="telephone=no">
        <meta name="msapplication-tap-highlight" content="no">
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width">
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>ATD</title>
		<!--디자인 및 기능 기본-->
		<link href="css/owl.carousel.css" rel="stylesheet" media="screen">
		<link href="css/ranseed.css" rel="stylesheet" media="screen">
    </head>
    <body class="back-white">
		<div style="position: fixed; width: 100%; z-index: 2;">
			<table class="nav-taps">
				<thead>
					<tr>
						<td><img class="taps-brand" src="img/logo.png"></td>
						<td class="taps-item active"><div class="taps-img necktieman"></div>결장자정보</td>
						<td class="taps-item" onclick="location.href='0401tips.html'"><div class="taps-img sketchbook"></div>경기분석팁</td>
						<td class="taps-item"><div class="taps-img chart"></div>스코어센터</td>
						<td class="taps-item"><div class="taps-img analytics"></div>배당흐름</td>
					</tr>
				</thead>
			</table>
			<div class="owl-carousel sub-taps">
				<div class="sub-taps-item active">축구</div>
				<div class="sub-taps-item">농구</div>
				<div class="sub-taps-item">야구</div>
				<div class="sub-taps-item">하키</div>
				<div class="sub-taps-item">기타1</div>
				<div class="sub-taps-item">기타2</div>
				<div class="sub-taps-item">기타3</div>
			</div>
			<div class="owl-carousel calendar">
				<div class="calendar-item">11/01(수)</div>
				<div class="calendar-item">11/02(목)</div>
				<div class="calendar-item">11/03(금)</div>
			</div>
			<div class="sub-taps-title">
				<span>HOME</span>
				<img src="img/sub_tilte_soccer.png">
				<span>AWAY</span>
			</div>
		</div>
		<div class="innerbody no-padding" style="padding-top: 163px;
												 padding-bottom: 60px;
												 background-color: #f3f3f3;">
			<table class="table-main">
				<thead class='animate loading'>
					<tr>
						<td colspan="3">프리메라리가</td>
					</tr>
				</thead>
				<tbody>
					<tr class='animate'>
						<td class='team' onclick="location.href='0500detail.html'"><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td>
							<div class="run-time" onclick="location.href='0500detail.html'">19 : 00</div>
							<div><span class="btn white small" onclick="location.href='0500detail_tips.html'">경기 분석 팁</span></div>
						</td>
						<td class='team' onclick="location.href='0500detail.html'"><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="no-tip"></span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="no-tip"></span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="btn white small">경기 분석 팁</span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<thead class='animate loading'>
						<tr>
							<td colspan="3">프리메라리가</td>
						</tr>
					</thead>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="btn white small">경기 분석 팁</span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="btn white small">경기 분석 팁</span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="btn white small">경기 분석 팁</span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="btn white small">경기 분석 팁</span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
					<tr class='animate'>
						<td class='team'><img src="img/league/sample01.jpg"><br>AFC본머스</td>
						<td><div class="run-time">19 : 00</div><div><span class="btn white small">경기 분석 팁</span></div></td>
						<td class='team'><img src="img/league/sample02.jpg"><br>노리치 시티</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="case-info-company">
			고객센터 <strong>injurydata29@gmail.com</strong>
		</div>
		<div id="delete" class="back-splash splash">
			<div class="case-img-logo">
				<img class="img-responsive" src="img/logo_big.png">
			</div>
			<div class="case-info-company transparent">ⓒCopyright by Injurydata</div>
		</div>
		<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
		<script src="js/jquery.cookie.js"></script>
		<script type="text/javascript" src="js/ranseed.js"></script>
		<script type="text/javascript" src="js/owl.carousel.min.js"></script>
		<script>
			var splashOpen = 0;
			$(window).load(function()
		    {
				setTimeout(function()
				{
					ranseedPopEditTexts({//란시드팝은 이런식으로 사용하시면 됩니다.
						title : 'ATD에 오신 것을 환영합니다.',
						subtitle : '닉네임을 입력해주세요.',
						inputType : ['text', 'text'],
						icon : ['phone', 'necktiman'],
						placeholder : ['전화번호', '닉네임'],
						value : ['010-5555-5555', ''],
						btnText : '확인',
						functionName : 'autoLogin()',
						closeFunctionName : 'autoLogin()'
					});
				},200);
				subTapsControl();
				calendarControl();
			});
			
			function autoLogin(){//splashscreen 로딩 끝나면 위로 올라가는거
				//추후에 ajaxsStop쪽에 넣어서 하시거나 다른 식으로 해서 하시면 됩니다.
				if(splashOpen == 0)
				{
					setTimeout(function()
					{
						$(".splash").removeClass("splash");
						setTimeout(function()
						{
							$("#delete").remove();
						}, 2000);
					},0);
					splashOpen = 1;
				}
				popClose();
			}
			
			function subTapsControl(){//서브텝 컨트롤 입니다.
				$('.sub-taps').owlCarousel({
					loop:true,
					margin:0,
					height: 100,
					nav:true,
					navText: ["<img src='img/icons/ic_prev_double.png'>"
							  ,"<img src='img/icons/ic_next_double.png'>"],
					responsive:{
						0:{items:5},
						400:{items:6},
						600:{items:10},
						1000:{items:15},
						1400:{items:18},
						1800:{items:22}
					}
				});
				
				var isDragging = 0;//터치 드래그 체크
				$(".sub-taps-item")
					.mousedown(function() {
						isDragging = 0;
					})
					.mousemove(function() {
						isDragging++;
					})
					.mouseup(function() {
						if(isDragging <= 3)
						{
							$(this).addClass('active');
							$(".sub-taps-item").not(this).each(function(){
								$(this).removeClass('active');
							});
							//**********************************
							//taps 이벤트를 여기에 넣으시면 됩니다.
							/*ex*/
							$('.animate').addClass('loading');
							setTimeout(function(){
								loadingAnimation();
							}, 100);
							//**********************************
						}
						isDragging = 0;
					});
			}
			
			function calendarControl(){
				$('.calendar').owlCarousel({
					loop:true,
					margin:0,
					height: 100,
					nav:true,
					navText: ["<img src='img/icons/ic_prev.png'><span id='calendarPrevText'>30</span>"
							  ,"<span id='calendarNextText'>2</span><img src='img/icons/ic_next.png'>"],
					items: 1
				});
			}
		</script>
    </body>
</html>