<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02 - directive</title>
</head>
<body>

<h1>ex02 - include (directive)</h1>
<hr>
<%@ include file="header.jsp" %>
<%
	String test = "ex02";	// Duplicate local variable test
%>
<h2>test : <%=test %></h2>

</body>
</html>