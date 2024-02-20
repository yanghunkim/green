<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/L_memberId.css"/>
<title>꿈을그린병원 : 회원가입</title>
</head>
<jsp:include page="../K_Include/herder.jsp"></jsp:include>
<body>
	<div id="te">
		<div id="ti">그린드림병원 아이디를 만들어주세요</div><br>
		
		<form action="memberPassword" method="post">
			<div id="i">아이디</div>
			
			<input type="text" name="id" id="id" maxlength="20" placeholder="영문소대문자,숫자조합 (8~20자)" maxlength="20" onblur="validId()"> <br>
			
			<label id="lbId"></label>
			<input type="button" name="checkId" id="checkId" value="중복확인" >
			<!-- </form> -->
		
			<input type="submit" name="next" id="next" disabled='disabled' value="다음">
		</form>
	</div>
	<!-- 아이디 -->
</body>
<jsp:include page="../K_Include/footer.jsp"></jsp:include>
<script src="/resources/js/L_memberId.js"></script>
</html>