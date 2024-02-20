<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/L_memberEtc.css"/>
<title>꿈을그린병원 : 회원가입</title>
</head>
<body>

	<div>개인정보를 입력해주세요</div><br>
	<div onmousemove="etc()" onkeydown="etc2()">
	<form action="memberPhone" method="post">
	
		<div>이름</div>
		<input type="text" name="name" id="name" placeholder="20자 이내로 입력 가능합니다." maxlength="20" onKeyUp="validName()" > <br>
		<label id="lbName"></label><br>
		<div>생년월일</div>
		<div class="info"  id="info__birth"  >
		  <select class="box" name="year" id="birth-year">
		    <option disabled selected>출생 연도</option>
		  </select>
		  <select class="box" name="month"id="birth-month">
		    <option disabled selected>월</option>
		  </select>
		  <select class="box" name="day"id="birth-day">
		    <option disabled selected>일</option>
		  </select><br>
		  <label id="lbBir"></label>
		</div><br>
		<div>성별</div>
		<div id="box gender">
			<label><input type="radio" name="gender" id="male" value="남">남자</label>
			<label><input type="radio" name="gender" id="female" value="여">여자</label>
			<label><input type="radio" name="gender" id="nogender"value="중">선택안함</label>
		</div>
		<label id="lbGender"></label>
		<input type="submit" name="next" id="next" disabled='disabled' value="다음">
	</form>
	</div>
</body>
<script src="${path}/resources/js/L_MemberEtc.js"></script>
</html>