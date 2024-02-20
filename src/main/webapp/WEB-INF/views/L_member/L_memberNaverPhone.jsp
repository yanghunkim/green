<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/L_memberNaverPhone.css"/>
<title>꿈을그린병원 : Naver 회원가입</title>
</head>
<body>
	<div id="ti">네이버 아이디 인증</div><br>
	<div id="ti">휴대폰 번호를 입력해주세요</div><br>
	<div id="me" onmousemove="validPhone()">
	
	<form action="memberNaverEnd" method="post">
		<input type="hidden" name="id" id="id" value="${sessionScope.id}">
		<input type="hidden" name="n_gender" id="n_gender" value="${sessionScope.n_gender}">
		<input type="hidden" name="n_name" id="n_name" value="${sessionScope.n_name}">
		<input type="hidden" name="n_email" id="n_email" value="${sessionScope.n_email}">
		<input type="hidden" name="n_birthday" id="n_birthday" value="${sessionScope.n_birthday}">
		<input type="hidden" name="n_nickName" id="n_nickName" value="${sessionScope.n_nickName}">
		<input type="hidden" name="n_mobile" id="n_mobile" value="${sessionScope.n_mobile}">
		<input type="hidden" name="n_birthyear" id="n_birthyear" value="${sessionScope.n_birthyear}">
		<input type="hidden" name="n_id" id="n_id" value="${sessionScope.n_id}">

		<div>휴대폰(필수)</div><br>
		<input type="text" name="phone" id="phone" placeholder="11자 이내로 작성 가능" maxlength="11" > <br>
		<label id="lbPhone"></label><br>
		<div>보호자번호(선택)</div>
		<input type="text" name="pphone" id="pphone" placeholder="11자 이내로 작성 가능" maxlength="11" > <br>
		<label id="lbPPhone"></label><br>
		<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
	</form>
	</div>
</body>
<script src="/resources/js/L_memberPhone.js"></script>
</html>