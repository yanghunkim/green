<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : 로그인</title>
<link rel="stylesheet" href="/resources/css/S_login.css">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300;500;700&display= swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<script>
https://accounts.google.com/o/oauth2/v2/auth
</script>

<body>
<jsp:include page="K_Include/herder.jsp"></jsp:include>

<div id="contaner">
	<div class="logBox">
		<div id="logincontaner01">
			<div>
				<h3 class="loginText">로그인</h3>
				<p class="loginText02">
					꿈을그린병원 홈페이지 회원 서비스를<br>이용하시려면 로그인이 필요합니다.
				</p>
			</div>
				<form id="loginForm" method="post" action="login">
					<div class="main">
						<div>
							<label> <input id="id" name="id" placeholder="아이디" class="inputText" type="text" />
							</label> <label for="openPw">
								<button type="submit" id="loginBtn" class="logBtn" onclick="formValidLogin()">로그인</button>
							</label>
						</div>
						<div>
							<label><input id="pw" name="pw" placeholder="비밀번호를 입력하세요" class="inputText" type="password" />
							</label><input type="checkbox" id="openPw" name="openPw" onclick="checkPw()" value="button" />
							<p>비밀번호 표시</p>
						</div>
					</div>
				</form>
				<div class="under">
					<div>
						<a href="find" role="button" class="txtBtn" style="margin-right: 5px;">아이디</a>
						<span>/</span><a href="findPw" style="margin-left:10px;">비밀번호찾기</a>
						<a href="member" role="button" class="txtBtn" style="display: block; margin-top:10px;">회원가입</a>
					</div>
				</div>
			<div class="telBox">
			
				<div id="S-sns" class="google">
					<jsp:include page="K_Include/S_google.jsp"></jsp:include>
				</div>

				<div id="K-sns" class="kakao">
					<jsp:include page="K_Include/K_kakao.jsp"></jsp:include>
				</div>

				<div id="L-sns" class="naver">
					<jsp:include page="K_Include/naverlogin.jsp"></jsp:include>
				</div>
				<div id="snsbox">
					<p>SNS 로그인<p>
				</div>
				
			</div>
		</div>
	</div>
		<!-- 비회원 로그인 만들기 -->
	
<div class="loginHeader">
		<div id="logincontaner02">
			<h3>비회원 진료예약</h3>
			<p>
				꿈을그린병원에 오신 것을 환영합니다.<br>이메일 인증으로 예약 서비스를 이용하실 수 있습니다.
			</p>
			<form>
				<div id="kname">
					<div id="kcontainer01">
						<label> 
						<input id="kid" name="" value="" type="text" placeholder="이름"> 
						<input id="kemail" name="" value="" type="email" placeholder="이메일">
						</label>
					</div>
					<div id="kcontainer02">
						<label>
							<input value="" type="text" placeholder="승인번호">
						</label>
						<button>승 인</button>
					</div>
					<div id="kcontainer03">
						<label style="position: absolute;"> 
							<input type="checkbox" placeholder="승인번호">
						</label>
						<label style="position: relative; margin: 2px; left:12%;">
							환자 및 법적대리인만 서비스 이용이<br>가능하며 개인정보 이용에 동의합니다.
						</label>
					</div>
				</div>
			</form>
			<div id="kcell">
				<p>
					<span>대표전화 · 진료예약</span>
				</p>
				<p>
					<b class="colorPoint">1588-9999</b>
				</p>
			</div>
		</div>
	</div>
</div>
<script>
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8080',
    });
  }
</script>
	<script type="text/javascript" src="resources/js/S_login.js"></script>
<jsp:include page="K_Include/footer.jsp"></jsp:include>
</body>