<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/L_memberPhone.css"/>
<title>꿈을그린병원 : 회원가입</title>
</head>
<body>

	<form action="memberEnd" method="post">
	<input type="hidden" name="id" id="id" value="${sessionScope.id}">
	<input type="hidden" name="pw" id="pw" value="${sessionScope.pw}">
	<input type="hidden" name="gender" id="gender" value="${sessionScope.gender}">
	<input type="hidden" name="name" id="name" value="${sessionScope.name}">
	<input type="hidden" name="birth" id="birth" value="${sessionScope.year}-${sessionScope.month}-${sessionScope.day}">
	<input type="hidden" name="email" id="email" value="${sessionScope.email}">
		<div>휴대폰(필수)</div><br>
		<input type="text" name="phone" id="phone" placeholder="11자 이내로 작성 가능" maxlength="11" onKeyUp="validPhone()"> <br>
		<label id="lbPhone"></label><br>
		<div>보호자번호(선택)</div>
		<input type="text" name="pphone" id="pphone" placeholder="11자 이내로 작성 가능" maxlength="11" onKeyUp="validIdPPhone()"> <br>
		<label id="lbPPhone"></label><br>
		<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
	</form>
</body>
<script src="/resources/js/L_memberPhone.js"></script>
</html>