<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>꿈을그린병원 : 네이버 회원가입</title>
<link rel="stylesheet" href="/resources/css/L_memberEmail.css"/>
</head>
<body>
	<div id="ti">네이버로 회원가입</div><br>
	<div id="ti2">이메일 인증</div><br>
	<form action="naverLoginEnd" method="post">
		<input type="hidden" name="n_gender" id="n_gender" value="${sessionScope.n_gender}">
		<input type="hidden" name="n_name" id="n_name" value="${sessionScope.n_name}">
		<input type="hidden" name="n_email" id="n_email" value="${sessionScope.n_email}">
		<input type="hidden" name="n_birthday" id="n_birthday" value="${sessionScope.n_birthday}">
		<input type="hidden" name="n_nickName" id="n_nickName" value="${sessionScope.n_nickName}">
		<input type="hidden" name="n_mobile" id="n_mobile" value="${sessionScope.n_mobile}">
		<input type="hidden" name="n_birthyear" id="n_birthyear" value="${sessionScope.n_birthyear}">
		<input type="hidden" name="n_id" id="n_id" value="${sessionScope.n_id}">
	<div class="email_auth">
		<input type="text" placeholder="이메일형식으로 입력해주세요(ex: hong1234@gmail.com)" name="email" id="email" class="email">
		<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button><br>
		<label id="lbEmail"></label>
	</div>
	<input type="text" placeholder="인증번호 입력" id="email_auth_key">
	<input type="button" id="check" value="번호 확인">
	<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
	</form>
	<!-- 이메일 -->
</body>
<script src="/resources/js/L_memberEmail.js"></script>
</html>