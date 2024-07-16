<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>security/admin</title>
</head>
<body>
<h1>security/admin.jsp</h1>
<p>관리자만 접근 가능함</p><br>
<p>로그인 한 사용자들 중에서 관리자 권한을 가진 사용자만이 접근할 수 있는 URI</p>
<a href="${pageContext.request.contextPath }/security/customLogout">로그아웃</a>
</body>
</html>