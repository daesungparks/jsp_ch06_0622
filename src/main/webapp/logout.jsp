<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h2>로그아웃 확인</h2>
	<hr>
	<%
		session.invalidate(); //세션 무효화
	%>
	<%
		if(request.isRequestedSessionIdValid()!=true) {
			out.println("로그아웃 되셨습니다.<br>");
			out.println("<a href='login.jsp'>");
			out.println("로그인<br>");
			out.print("</a>");
		} else {
	%>
		<br>
		<a href="logout.jsp">로그아웃</a>
			
	<% 
		}
	%>
</body>
</html>