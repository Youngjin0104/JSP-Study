<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-forward.jsp</title>
</head>
<body>

<%
// 	RequestDispatcher rd = request.getRequestDispatcher("header.jsp");
// 	rd.forward(request, response);
%>

<%-- forward하면서 임의의 파라미터를 전달할 수가 있다 --%>
<%-- parameter : 사용자 입력 --%>

<%	request.setCharacterEncoding("UTF-8"); %>

<jsp:forward page="header.jsp">
	<jsp:param name="name" value="이지은" />
	<jsp:param name="age" value="29" />
</jsp:forward>

</body>
</html>





