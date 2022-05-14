<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
<%
	ArrayList<Member> list = (ArrayList<Member>)application.getAttribute("list");
	
	for(int i = 0; i < list.size(); i++) {
		Member m = list.get(i);
		out.println("<p>" + i + " : " + m + "</p>");
	}
%>
</main>
</body>
</html>