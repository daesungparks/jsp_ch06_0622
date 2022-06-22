<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 유효시간</title>
</head>
<body>
	<h2>세션의 유효시간 출력학시</h2>
	<hr>
	<%
		int session_time = session.getMaxInactiveInterval() / 60;
		out.println("세션의 유효시간(기본 값) : "+session_time + "분<br>" );
		
		session.setMaxInactiveInterval(60 * 10);
		int session_time2 = session.getMaxInactiveInterval() / 60;
		out.println("세션의 유효시간(변경 후) : " + session_time2 + "분");
		
	
	%>
	<hr>
	<%
		String session_id = session.getId();
		out.print("세션아이디 : "+session_id+ "<br>");
		long last_time = session.getLastAccessedTime() / 60000; //마지막접속시간
		//out.print("세션 마지막 접근시간 : "+last_time+ "<br>");
		long start_time = session.getCreationTime() / 60000;;//세션의 생성시간
		//out.print("세션 생성 시간 : "+start_time+ "<br>");
		long keep_time = (last_time - start_time) / 60000;
		out.print("세션 유지 시간" + keep_time + "분");
	
		//session.invalidate();
	%>
</body>
</html>