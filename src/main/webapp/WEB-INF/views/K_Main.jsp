<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<head>
<title>Home</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="js/Main.js"></script>
<link rel="stylesheet" href="resources/css/K_Main.css">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>
<body>

	<!-- 최상단 메인 로고 작업 입니다. -->
	<div id="ktitle">
		<h1>꿈을그린병원</h1>
		<h4>Dream Green Hospital</h4>
	</div>
	<!-- 최상단 메인 로고 끝입니다. -->

	<!-- 로그읜 확인 -->
	<div id="loginCheck">
	<form method="post">
		<c:choose>
			<c:when test="${login.id eq null and sessionScope.FullName eq null and sessionScope.n_name eq null and sessionScope.k_nickname eq null}">
				
				<input type="submit" formaction="login" value="로그인">
				<input type="submit" formaction="member12" value="회원가입">
				
			</c:when>
			<c:when test="${login.name ne null}">
				<h3>${login.name}님 환영합니다.</h3><br>
				<input type="submit" formaction="memberdetail" value="내 정보">			
				<input type="submit" formaction="logout" value="로그아웃">			
			</c:when>
			<c:when test="${sessionScope.FullName ne null}">
				<h3>${sessionScope.FullName}님 환영합니다.</h3><br>
				<input type="submit" value="구글 회원" disabled="disabled">			
				<input type="submit" formaction="logout" value="로그아웃">			
			</c:when>
			<c:when test="${sessionScope.n_name ne null}">
				<h3>${sessionScope.n_name}님 환영합니다.</h3><br>
				<input type="submit" value="네이버 회원" disabled="disabled">			
				<input type="submit" formaction="logout" value="로그아웃">			
			</c:when>
			<c:when test="${sessionScope.k_nickname ne null}">
				<h3>${sessionScope.k_nickname}님 환영합니다.</h3><br>
				<input type="submit" value="카카오 회원" disabled="disabled">			
				<input type="submit" formaction="logout" value="로그아웃">			
			</c:when>
		</c:choose>
	</form>
	</div>

	<!-- 상단 네비게이션 시작입니다. -->
	<div id="nav">
		<ul>
			<li><a href="" style="color:#009999; ">진료예약</a></li>
			<li><a href="" style="color:#009999; ">진료소개</a></li>
			<li><a href="" style="color:#009999; ">진료병과</a></li>
			<li><a href="" style="color:#009999; ">증명서발급</a></li>
			<li><a href="" style="color:#009999; ">공지사항</a></li>
		</ul>
	</div>
	<!-- 상단 네비게이션 끝입니다. -->


	<!-- 상중단 슬라이더 사진 기능이 있는 스위퍼 입니다. -->
	<div class="swiper mySwiper"
		style="position: fixed; top: 0; z-index: -1;">
		<div class="swiper-wrapper">
			<div class="swiper-slide"
				style="background-image: url('/resources/img/title03.jpg');"></div>
			<div class="swiper-slide"
				style="background-image: url('/resources/img/title02.jpg');"></div>
			<div class="swiper-slide"
				style="background-image: url('/resources/img/title04.jpg');"></div>
			<div class="swiper-slide"
				style="background-image: url('/resources/img/title01.jpg');"></div>
		</div>
		<div class="swiper-pagination"></div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
		var swiper = new Swiper(".mySwiper", {
			pagination : {
				el : ".swiper-pagination",
			},
		});
	</script>
	<!-- 중단 메뉴 레이아웃 입니다.  -->
	<div id="layout">
		<div class="container">
			<ul>
				<li style="border-radius: 25px 0px 0px 0px;"><a href="" style="color:#009999; ">진료예약문의</a></li>
				<li><a href="">예약현황조회</a></li>
				<li style="border-radius: 0px 25px 0px 0px;"><a href="" style="color:#009999; ">&nbsp온라인<br>&nbsp예&nbsp&nbsp약</a></li>
			</ul>
		</div>
		<div class="container">
			<ul >
				<li><a href="">의료진<br>진료과</a></li>
				<li><a href="">외래진료<br>일정표</a></li>
				<li><a href="">입&nbsp&nbsp원</a></li>
			</ul>
		</div>
		<div class="container">
			<ul>
				<li style="border-radius: 0px 0px 0px 25px ;"><a href="" style="color:#009999; ">급여/비급여<br>&nbsp&nbsp수술안내</a></li>
				<li><a href="">진단서/증명서<br>&nbsp발급</a></li>
				<li style="border-radius: 0px 0px 25px 0px;"><a href="" style="color:#009999; border-radius: 25px 0px 25pxpx 0px;">면&nbsp&nbsp회</a></li>
			</ul>
		</div>
	</div>

</body>
</html>