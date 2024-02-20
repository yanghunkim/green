<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style type="text/css">
* {
	margin: 0 auto;
	padding: 0;
	background-repeat: no-repeat;
	background-size: cover;
	list-style: none;
}
	/* 움직이는 텍스트 */
.kanimated-title {
    font-size: 30px;
    font-family: binggrae;
    font-weight: 300;
    position: fixed;
    bottom: 8.5%;
    left: 0;
    width: 49%;
    max-width: 100%;
    height: auto;
    padding: 150px 0;
    color: #ffffff;
    z-index: -1;
}
.kanimated-title .ktrack {
	position: absolute;
	white-space: nowrap;
	will-change: transform;
	animation: marquee 30s linear infinite;
	right: -93%; /* 움직일위치 */
	bottom:-30%;
}
/* 	@keyframes marquee {
  	  from { transform: translateX(0); }
 	  					
	  to { transform: translateX(-2000%); }   
	} 
@media (hover: hover) and (min-width: 1500px) {
	.kanimated-title .kcontent {
		width:250px;
		transform: translateY(calc(100% - 8rem)); 
	    transform: translateY(calc(100% - 8rem));
	}
}   */
/* 여기까지가 움직이는 텍스트 입니다. */

/* 여기서부터 트레인 css style 입니다. */
#ktrain {
	width: 200px;
    height: 150px;
    left: 100px;
    position: relative;
    background-color: #f74d4e;;
}
#ktrainHat {
	width: 200px;
    height: 60px;
    border-radius: 30px 30px 0px 0px;
    position: relative;
    left: 100px;
    top: 10px;
    z-index: 1;
    background-color: #261619;
}
#ktrainhed {
	position: absolute;
    bottom: 0%;
    left: 35px;
    width: 150px;
    height: 90px;
    border-radius: 55px 0px 0px 0px;
    background-color: #f74d4e;
}
#ktrainChimney {
	position: relative;
	z-index:-1;
    top: -80px;
    right: 20px;
    width: 30px;
    height: 100px;
    border-radius: 5px 5px 0px 0px;
    background-color: #424c4e;
}
#ktrainmirror {
    display: inline-block;
    position: relative;
    top: 18px;
    left: 15px;
    border-radius: 3px;
    background-color: white;
    width: 130px;
    height: 40px;
}
#kwheel01 {
    width: 80px;
    height: 80px;
    position: absolute;
    border-radius: 50px;
    background-color: black;
    z-index: 1;
    top: 150px;
    left: 140px;
    }
#kwheel02 {
    width: 80px;
    height: 80px;
    position: absolute;
    border-radius: 50px;
    background-color: black;
    z-index: 1;
    top: 150px;
    left: 230px;
    }
.kwheeleee > div {
	width: 60px;
	height: 60px;
	position:relative;
	margin-top: 10px;
	background-color:#eee;
	border-radius: 50px;
}
.kwheeleee > div > div {
	width: 40px;
	height: 40px;
	position:relative;
	top: 10px;
	background-color:#ffffff;
	border-radius: 50px;
}

#kfreightcar   {
	position: absolute;
    bottom: 0%;
    left: 100%;
    
}
#kfreightcar dt:not(:nth-child(1)) {
	display: inline-block;
	position: relative;
	text-align: left;
	padding:10px;
	margin: 20px 0px 0px 0px;
    background: #009999;
    border-radius: 15px 15px 0px 0px;
}
#kfreightcar dt span{
	position: relative;
    color: white;
    z-index: 0;
    padding: 10px;
    border-radius: 13px;
    background-color: #009999;
}
#kfreightcar dd {
	display:inline-block;
	position:relative;
	top:-10px;
	z-index:-10;
	margin:-10px;
	background:#009999;
	width:30px;
	height: 5px;
}
</style>
<!-- 끝입니다.  -->

</head>
<body style="background:#fafafa">
	<div class="kanimated-title">
		<div class="ktrack">
			<div class="kcontent">
			<div id="ktrainHat"></div>
				<div id="ktrainhed">
					<div id="ktrainChimney"></div>
				</div>
					<div id="ktrain">
						<div id="ktrainmirror"></div>
							<dl id="kfreightcar">
									<!-- 여기에 공지사항을 적으시면 됩니다.-->
								<dt>
									<span>여기는 공지사항이 들어가는 곳이에요 I'am 공지사항 입니다.하요하요</span>
								</dt>
								<dd></dd>
								<dt> 
									05505 서울특별시<br>송파구올림픽로 43길 88<br>서울아산병원
								</dt>
								<dd></dd>
								<dt>Copyright@2014<br>by Asan Medical Center.<br>All Rights reserved</dt>
								<dd></dd>
								<dt>환자권리장전</dt>
								<dd></dd>
								<dt>개인정보처리방침</dt>
								<dd></dd>
								<dt>이용약관의료</dt>
								<dd></dd>
								<dt>정보운영방침</dt>
								<dd></dd>
								<dt>비급여진료비의무</dt>
								<dd></dd>
								<dt>기록사본발급안내</dt>
								<dd></dd>
								<dt>위변조문서확인</dt>
								<dd></dd>
								<dt>이메일 주소수집거부</dt>
								<dd></dd>
								<dt>원격지원서비스</dt>
								<dd></dd>
								<dt>홈페이지이용문의</dt>
							</dl>
					</div>
				<div id="kwheel01" class="kwheeleee">
					<div>
						<div></div>
					</div>
				</div>
				<div id="kwheel02" class="kwheeleee">
					<div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>