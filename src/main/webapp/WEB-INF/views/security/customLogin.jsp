<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>security/customLogin</title>
</head>
<body>
<h1>security/customLogin.jsp</h1>
<form action="/login" method="post">
아이디 : <input type="text" name="username" value="admin"><br>
비밀번호 : <input type="password" name="password"><br>
<input type="submit" value="로그인">
<!-- csrf : 사이트 간 요청 위조 공격 -->
<!-- _csrf.parameterName_csrf.token : 토큰 임의의 값 -->
<!-- csrf 토큰 : 사용자가 임의로 변하는 특정한 토큰 값을 서버에서 체크하는 방식 -->
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
</form>
</body>
</html>