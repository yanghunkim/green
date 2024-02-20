<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : 아이디찾기</title>

<link rel="stylesheet" href="/resources/css/S_loginFind.css">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300;500;700;&display= swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;600;700;&display=swap" rel="stylesheet">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('#divRadio02').css('display', 'none');
		$('input[type="radio"][name="findRadio"]').on('click', function() {
			var chkValue = $('input[type=radio][id="radio01"]:checked').val();

			if (chkValue) {
				$('#divRadio01').css('display', 'block');
				$('#divRadio02').css('display', 'none');
				return;
			} else {
				$('#divRadio01').css('display', 'none');
				$('#divRadio02').css('display', 'block');
				return;
			}
		});
	});
</script> 
</head>

<body>

	<jsp:include page="K_Include/herder.jsp"></jsp:include>
	
<section id="contents">
	<div id="contaniner">
		<div class="contaninerbox01">
			<h2 class="findHeader">아이디 찾기</h2>
			<h3 class="info-txt">
				아이디를 잊어버리셨나요?<br>가입하신 휴대폰 또는 이메일 확인을 통해 아이디를 찾으실 수 있습니다.
			</h3>
		</div>
		<div class="findContainer">
			<div style="height: 90px;">
				<div id="checkBtn01">
					<label class="radio01"> 
						<input type="radio" name="findRadio" id="radio01" checked="checked" value="yes" /> 
						<span class="label-text">휴대폰 확인</span>
					</label>
				</div>
				<div id="checkBtn02">
					<label class="radio02"> 
						<input type="radio" name="findRadio" id="radio02" value="no" /> 
						<span class="label-text">이메일 확인</span>
					</label>
				</div>
				
				<div id="divRadio01">
					<!-- 인증X 회원정보랑 비교해서 일치하는 값이 있으면 아이디 보여주고 없으면 '일치하는 회원정보가 없습니다' -->
					<form id="S_findIdPhone" name="S_findIdPhone" action="S_findIdPhone" method="post" onsubmit="return formFindIdPhone()">
						
						<div class="tableForm01">
							<table>
								<tr>
									<th scope="row">
										<label for="userName1">이&nbsp&nbsp름</label> 
										<span class="star">*</span>
									</th>
									<td>
										<input type="text" id="name" name="name" class="inputNormal" role="textbox" />
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="userPhone">휴대폰</label> 
										<span class="star">*</span>
									</th>
									<td>
										<div>
											<input type="text" id="phone" name="phone" class="inputSmall" role="textbox" />
										</div>
									</td>
								</tr>
								<tr>	
									<th>
										<button type="submit" class="yesBtn" id="check">
											<span class="button-text">확인</span>
										</button>
									</th>
								</tr>
							</table>
							<p>※ ( '-' 제외하고 숫자만 입력 )</p>
						</div>

					</form>
				</div>
				
				<div id="divRadio02">
					<form id="S_findIdEmail" name="S_findIdEmail" action="S_findIdEmail" method="post" onsubmit="return formFindIdEmail()">

						<div class="tableForm02">
							<table>
								<tr>
									<th scope="row">
										<label for="userName2">이&nbsp&nbsp름</label>
										<span class="star">*</span>
									</th>
									<td>
										<input type="text" id="name" name="name" class="inputNormal" role="textbox" />
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="userEmail2_1">이메일</label> 
										<span class="star">*</span>
									</th>
									<td>
										<div class="input-selectbox">
											<input type="text" id="email" name="email" class="inputNormal" role="textbox" />
										</div>
									</td>
								</tr>
							</table>
							<div class="btns-wrap" id="btn_ID">
								<a href="login" class="notBtn" role="button">
									<span class="button-text">이전</span>
								</a>
								<button type="submit" class="yesBtn">
									<span class="button-text">확인</span>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
					
			<div class="other">
				<a href="login" class="notBtn" role="button">
					<span class="button-text">로그인</span>
				</a> 
				<a href="findPw" class="notBtn" role="button">
					<span class="button-text">비밀번호 찾기</span>
				</a>
			</div>
				<!-- 회원가입 -->
			<div class="join-link">
				<p class="join-txt">
					아직 가입하지 않으셨다면 지금 회원으로 가입하세요.<br>
					다양하고 유용한 온라인서비스를 이용하실 수 있습니다.
				</p>
				<!-- 회원가입 링크 -->
				<a href="member" class="button" role="button">
					<span class="button-text">회원가입</span>
				</a>
			</div>
			<!-- SNS 가입 회원 -->
			<div class="join-SNS">
				<p class="SNS-text">SNS 가입 회원은 가입하신 SNS에서 아이디 찾기가 가능합니다.</p>
				<!-- SNS 링크 -->
			<div class="telBox">
				<div id="snsbox">
					<a href="login" class="button" role="button"><span class="button-text">SNS 로그인</span></a>
				</div>
			</div>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript" src="resources/js/loginFind.js"></script>

<jsp:include page="K_Include/footer.jsp"></jsp:include>
</body>
</html>