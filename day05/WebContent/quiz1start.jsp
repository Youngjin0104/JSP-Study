<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="day05.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1start</title>
</head>
<body>

<%
	Member [] twice = {
		new Member("나연", 27),	
		new Member("사나", 26),	
		new Member("다현", 24),	
		new Member("정연", 26),	
		new Member("지효", 25),	
		new Member("채영", 23),	
		new Member("모모", 26),	
		new Member("미나", 25),	
		new Member("쯔위", 23)	
	};

	List<Member> list = Arrays.asList(twice);
	
	request.setAttribute("list", list);
	
	RequestDispatcher rd = request.getRequestDispatcher("quiz1.jsp");
	rd.forward(request, response);
%>

</body>
</html>

