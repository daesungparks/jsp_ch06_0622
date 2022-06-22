<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<%
		if(request.isRequestedSessionIdValid() != true){
	%>
	<form action="loginOk.jsp" method="post">
		아이디: <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name="pw"><br><br>
		<input type="submit" value="로그인">
	
	</form>
	<%
		} else {	
			
			String mid =(String)session.getAttribute("memberId");
	%>
	
		 현재 <%=mid %> 님 로그인 중입니다.<br><br>
		 <input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<%
		}
	%>

</body>
</html>