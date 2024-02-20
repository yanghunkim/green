<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : 회원정보수정</title>
<link rel="stylesheet" href="/resources/css/L_memberDetail.css"/>
</head>
<body>
<jsp:include page="../K_Include/herder.jsp"></jsp:include>
<div id="me" onmousemove="pf()" onkeydown="pf2()">
<form action="" method="post">

<table border="1">
	<tr>
		<td class="title">아이디</td>
		<td>
			${detail.id}<input type="hidden" name="id"  value="${detail.id}">
		</td>
	</tr>
	<tr>
		<td class="title">비밀번호</td>
		<td>
			<input type="password" name="pw" id="pw" maxlength="20" value="${detail.pw}">
			<input type="button" value="표시/숨김"  onclick="pwe()"><br>
			<label id="lbPw"></label>
		</td>
		
			
		
	</tr>
	<tr>
		<td class="title">비밀번호 확인</td>
		<td>
			<input type="password" name="pwc" maxlength="20" id="pwc">
			<input type="button" id="change" value="표시/숨김" onclick="pwce()"><br>
			<label id="lbPwc"></label>
		</td>
	
	</tr>
	<tr>
		<td class="title">이름</td>
		<td>
			<input type="text" name="name" maxlength="20" value="${detail.name}">
		</td>
		
	</tr>
	<tr>
		<td class="title">휴대폰번호</td>
		<td>
			<input type="text" name="phone" maxlength="11" value="${detail.phone}">
		</td>
		
	</tr>
	<tr>
		<td class="title">보호자번호</td>
		<td>
			<input type="text" name="pphone" maxlength="11" value="${detail.pphone}">
		</td>
		
	</tr>
	<tr>
		<td class="title">성별</td>
		<td>
			${detail.gender}<input type="hidden" name="gender"  value="${detail.gender}">
		</td>
		
	</tr>
	<tr>
		<td class="title">이메일</td>
		<td>
			${detail.email}<input type="hidden" name="email"  value="${detail.email}">
		</td>
		
	</tr>
	<tr>
		<td class="title">생일</td>
		<td>
			${detail.birth}<input type="hidden" name="birth"  value="${detail.birth}">
		</td>
		
	</tr>
	<tr id="button">
		<td colspan="2">
			<input type="submit" formaction="modify" value="회원정보수정" id="modify">
			<input type="submit" formaction="remove" value="회원탈퇴" id="remove">
		</td>
	</tr>
</table>
</form>
</div>
</body>
<script src="/resources/js/L_memberDetail.js"></script>
<jsp:include page="../K_Include/footer.jsp"></jsp:include>
</html>