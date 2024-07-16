<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>security/customLogout</title>
</head>
<body>
<h1>security/customLogout.jsp</h1>
<form action="${pageContext.request.contextPath }/customLogout" method="post">
<input type="submit"value="로그아웃">
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
</form>
</body>
</html>