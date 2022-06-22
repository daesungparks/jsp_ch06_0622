<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		
		if(memberId.equals("tiger") && memberPw.equals("12345")){
		
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberPw", memberPw);
			
			out.println("로그인 성공!<br>");
			out.println(memberId + "님 반갑습니다.");	
		} else {
			
			out.println("로그인 실패<br>");
		}
		
	%>
</body>
</html>