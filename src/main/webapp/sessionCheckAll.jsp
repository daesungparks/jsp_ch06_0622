<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보 확인</title>
</head>
<body>
	<h2>모든 세션 정보 확인하기</h2>
	<hr>
	<%
		Enumeration enumer = session.getAttributeNames();
	
		String name;
		String value;
		
		while(enumer.hasMoreElements())
		{
			name = enumer.nextElement().toString();
			value = (String) session.getAttribute(name);
			
			out.println("세션의 이름 : "+ name + "<br>");
			out.println("세션의 속성값 : "+ value + "<br>");
		}
	%>
</body>
</html>