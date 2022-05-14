<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>
<%!
	public String getToday(){
	Date nowTime = new Date();
	SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String result = time.format(nowTime);
	return result;
	}
%>
<%
	String today = getToday();
	String date = String.format("지금은%s입니다", today);
%>
<h2><%=date %></h2><br>
<h2><%=String.format("지금은%s입니다", getToday())%></h2>
</body>
</html>