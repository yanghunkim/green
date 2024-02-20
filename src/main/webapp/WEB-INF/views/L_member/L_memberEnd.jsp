<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/resources/css/L_memberEnd.css"/>
<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : 회원가입 완료</title>
</head>
<body>

<div>반가워요, ${sessionScope.name} 회원님^^</div><br>
<a href="/">메인페이지로가기</a> <a href="login">로그인 하러가기</a>
</body>
<script src="/resources/js/L_memberEnd.js"></script>
</html>