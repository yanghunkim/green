<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/L_memberPassword.css"/>
<title>꿈을그린병원 : 회원가입</title>
</head>
<jsp:include page="../K_Include/herder.jsp"></jsp:include>
<body>
	<div id="me" onmousemove="pf()" onkeydown="pf2()">
		<form action="memberEtc" method="post">
			<div id="ti">비밀번호를 설정해주세요.</div>
			<div id="p">비밀번호</div>
			<div id="pws">
			<input type="text" name="pw" id="pw" placeholder="영문,숫자,특수문자 조합(8~20자)" maxlength="20" onKeyUp="validPw()">
			<input type="button" value="표시/숨김"  onclick="pwe()">
			</div>
			<label id="lbPw"></label>
			<div>비밀번호 확인</div><br>
			<input type="text" name="pwc" id="pwc" placeholder="비밀번호 재입력" maxlength="20" onKeyUp="validPwc()">
			<input type="button" id="change" value="표시/숨김" onclick="pwce()"><br>
			<label id="lbPwc" onblur="ext()"></label><br>
			<input type="submit" name="next" id="next" disabled='disabled' value="다음" >
		</form>
	</div>
	<!-- 페스워드 -->
</body>
<jsp:include page="../K_Include/footer.jsp"></jsp:include>
<script src="/resources/js/L_memberPassword.js"></script>
</html>