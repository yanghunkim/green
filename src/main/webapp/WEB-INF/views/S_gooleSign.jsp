<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>꿈을그린병원 : google 회원가입</title>
<link rel="stylesheet" href="/resources/css/snsLogin.css"/>
</head>
<body>
<jsp:include page="K_Include/herder.jsp"></jsp:include>
<%-- ${sessionScope} --%>
	<div id="sectioncontainer02" class="containerbox">
		<div id="start02">
			<h2>구글 회원가입을 위한 이메일 인증을 진행해주세요</h2><br>
		</div>
		<div class="inputHiden">
		<form action="googleSign" method="post">

			<input type="hidden" name="ID" id="ID" value="${sessionScope.ID}">
			<input type="hidden" name="FullName" id="FullName" value="${sessionScope.FullName}">
			<input type="hidden" name="GivenName" id="GivenName" value="${sessionScope.GivenName}">
			<input type="hidden" name="familyName" id="familyName" value="${sessionScope.familyName}">
			<input type="hidden" name="ImageURL" id="ImageURL" value="${sessionScope.ImageURL}">
			<input type="hidden" name="Email" id="Email" value="${sessionScope.Email}">

		<div class="email_auth">
			<input type="text" placeholder="이메일형식으로 입력해주세요(ex: hong1234@gmail.com)" name="googleEmail" id="googleEmail" class="googleEmail">
			<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button><br>
		</div>
		
			<input type="text" placeholder="인증번호 입력" id="email_auth_key">
			<input type="button" id="check" value="번호 확인"><br>
			<label id="lbEmail"></label>
			<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
		</form>
		
		</div>
	</div>
<script src="/resources/js/S_googleEmail.js"></script>
<jsp:include page="K_Include/footer.jsp"></jsp:include>
</body>
</html>