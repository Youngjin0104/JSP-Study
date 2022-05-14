<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp - EL Scope</title>
</head>
<body>

<h1>ex04.jsp - EL Scope</h1>
<hr>
<%--
		pageContext -> request -> session -> application
		
		pageContext에서 먼저 찾고 없으면 request에서 찾는다
		request에서 먼저 찾고 없으면 session에서 찾는다
		session에서 먼저 찾고 없으면 application에서 찾는다
 --%>

<%
	pageContext.setAttribute("test", "test1");
	request.setAttribute("test", "test2");
	session.setAttribute("test", "test3");
	application.setAttribute("test", "test4");
	
	session.setAttribute("itbank", "itbank");	
	// 세션에 저장했으면 scope를 다른영역으로 지정해서 접근할 시 못찾는다 (우선처리가 아니라 대상영역만 찾는다)
%>

<h2>&#36;{test } : ${test }</h2>
<h2>&#36;{pageScope.test } : ${pageScope.test }</h2>
<h2>&#36;{requestScope.test } : ${requestScope.test }</h2>
<h2>&#36;{sessionScope.test } : ${sessionScope.test }</h2>
<h2>&#36;{applicationScope.test } : ${applicationScope.test }</h2>
<br>
<h2>&#36;{sessionScope.itbank } : ${sessionScope.itbank }</h2>
<h2>&#36;{applicationScope.itbank } : ${applicationScope.itbank }</h2>
<br>
<h2>&#36;{cookie.JSESSIONID.value } : ${cookie.JSESSIONID.value }</h2>
<h2>&#36;{param.name } : ${param.name }</h2>
</body>
</html>












