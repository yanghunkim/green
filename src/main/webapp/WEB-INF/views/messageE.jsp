<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : 이메일로 아이디 찾기</title>
</head>
<body>
	<script type="text/javascript">
		var message = "${message}";
		var url = "find";
		alert(message);
		document.location.href = url;
	</script>
</body>
</html>