<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 확인</title>
</head>
<body>
	<h2>session 정보 확인</h2>
	<hr>
	<%
		String mid =(String)session.getAttribute("memberId");
		if(mid == null) {
			out.println("로그인<br>");
		} else {
	%>
		현재 <%= mid %> 님은 로그인 중입니다.<br>
		<a href="logout.jsp">로그아웃</a>
			
	<% 
		}
	%>
	<a href="logout.jsp">로그인 세션으로 이동</a>
		
</body>
</html>