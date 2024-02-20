<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style type="text/css">
* {
	margin: 0 auto;
	padding: 0;
	background-repeat: no-repeat;
	background-size: cover;
	list-style: none;
}
a {	
	font-family: 'Sunflower';
    font-weight: 600;
	text-decoration: none;
	font-size: 25px;
	color:#009999;
}
body {
	background: #fafafa;
    text-align: center;
}
h1{
	font-size: 29px;
	font-family: 'Sunflower', sans-serif;
	color: #009999;
	margin: 0;
	padding-top:15px;
	cursor: pointer;
}
h3 {
	font-family:'Noto Sans KR', sans-serif;
	font-size:30px
}
h4 {
	font-size: 16px;
    color: #009999;
    margin-left: 9px;
    margin-bottom: 15px;
    padding-bottom: 5px;
    font-family: 'Noto Sans KR';
    cursor: pointer;
}
p {
	font-family:'Noto Sans KR', sans-serif;
	font-size:18px;
}
#kherder {
	width: 100%;
    background: #ffffff;
    display: flex;
    flex-direction: column-reverse;
    border-bottom: 1px solid rgba(0,0,0,0.1);
    box-shadow: 0 10px 20px rgba(0,0,0,0.08);
}
#ktitle { 
	display: flex;
    position: relative;
    margin: 0;
    align-items: center;
    justify-content: space-evenly;
}
#kmember{
	padding-left:15px;
}
#knavbox.on{
	left:20px;
}
#knavbox {
	width: 60px;
	height: 30px;
	z-index: 2;
	position: relative;
	transition: 0.5s;
}
/* 여기서부터는 메뉴 = 의 css 스타일 입니다.  */
#knavbox span {
	display:block;
	width: 35px;
    height: 3px;
    margin: 5px 0px 5px 15px;
    background: #009999;
}
#knavbox span:nth-child(1){
	transition: all 0.3s ease;
    transition-property: top, transform, background;
    transition-delay: 0.6s, 0.3s, 0s;
}
#knavbox span:nth-child(2){
	transition: background 0.3s ease 0s;
}
#knavbox span:nth-child(3){
	transition: all 0.3s ease;
    transition-property: top, transform, background;
    transition-delay: 0.6s, 0.3s, 0s;
}
/* 클릭할때 변하는 스타일 입니다.  */
#ktitle.kon #knavbox {
	top: 30px;
    left: 25px;
}
#ktitle.kon #knavbox sapn {
	width: 35px;
    height: 3px;
    margin: 5px 0px 5px 15px;
    display: block;
    background: black;
    z-index: 2;
}
#ktitle.kon #knavbox {
	transform: rotate(180deg);
}
#ktitle.kon #knavbox span:nth-child(1) {
	position:relative;
	top:10px;
	background: #ffffff;
	transform: rotate(-45deg);
    transition-delay: 0s, 0.3s, 0.6s;
}
#ktitle.kon #knavbox span:nth-child(2) {
	background-color: transparent;
}
#ktitle.kon #knavbox span:nth-child(3) {
	position:relative;
	bottom:6px;
	background: #ffffff;
	transform: rotate(45deg);
    transition-delay: 0s, 0.3s, 0.6s;
}
	/* 클릭할때 변하는 스타일 끝입니다.  */
	
	/* 여기서 부터는 메뉴 css 입니다.  */
#kmenu {
	position: absolute;
	top:-1000px;
	width: 100%;
	height: 500px;
	background: #009999;
	justify-content: center;
	border-bottom: 1px solid rgba(0,153,153,1);
	box-shadow :0 10px 20px rgba(0,0,0,0.3);
}
#kmenu ul  {
	display: flex;
    justify-content: center;
    text-align: justify;
    padding-top: 130px;
}
#kmenu ul li {
	width: 11%;
    height: auto;
    color: white;
    margin: 5px 0px 0px 25px;
    padding-left: 50px;
    border-right: 1px solid;
}
#kmenu ul li:nth-child(5) {
	border-right: none;
}
#kmenu ul li:nth-child(2) {
	padding-right: 50px;
}
#kmenu.kyes {
    height: 700px;
	top:0;
	transition: all 0.3s ease;
	z-index: 1;
}
</style>
<script type="text/javascript">
	function kon(){
		document.getElementById("ktitle").classList.toggle("kon");
		document.getElementById("kmenu").classList.toggle("kyes");
	}
</script>
</head>
<body>
	<div id="kherder">
		<div id="ktitle">
			<div style="width: calc(100%/9)"></div>
			<div >
				<h1 onclick="location.href='/'">꿈을그린병원</h1>
				<h4 onclick="location.href='/'">Dream Green Hospital</h4>
			</div>
			
			<div style="display: flex;">
				<div id="klogin" style="margin-left:15px">
					<a href="login">로그인</a> 
				</div>
				<div id="kmember">
					<a href="member">회원가입</a>  
				</div>
				<div id="knavbox" onclick="kon()">
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div>
		</div>
		<div id="kmenu">
			<ul>
				<li>
					<h3>진료예약</h3><br>
					<p>진료과예약</p><br>
					<p>의료진예약</p><br>
					<p>과거 진료이력</p>
				</li>
				<li>
					<h3>진료과/의료진</h3><br>
					<p>진료과</p><br>
					<p>의료진</p><br>
					<p>클릭닉</p><br>
					<p>전문진료센터</p><br>
					<p>진료지원부서</p>
				</li>
				<li>
					<h3>병원소개</h3><br>
					<p>역대병원장</p><br>
					<p>경병비전</p><br>
					<p>CMC 역사관</p><br>
					<p>홍보갤러리</p>
				</li>
				<li>
					<h3>병원안내</h3><br>
					<p>외래진료안내</p><br>
					<p>응급진료안내</p><br>
					<p>건강검진안내</p><br>
					<p>이용안내</p><br>
					<p>입퇴원안내</p><br>
					<p>간호서비스안내</p><br>
					<p>증명서발급안내</p>
				</li>
				<li>
					<h3>병원소식</h3><br>
					<p>뉴스</p><br>
					<p>공지사항</p><br>
					<p>교육|행사</p><br>
					<p>병원소식지</p><br>
					<p>채용정보</p><br>
					<p>입찰공고</p>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>