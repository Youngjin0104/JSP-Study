<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp - c:choose</title>
</head>
<body>

<h1>c:choose</h1>
<hr>
<%--c:if 로 여러 선택지를 제시하면 여러개가 수행될 수도 있지만 --%>
<%--c:choose 에서는 when중에서 하나만 실행된다 --%>

<c:choose><%--switch --%>
	<c:when test="${empty param.age }"><%--case --%>
		<form>
			<input type="number" name="age" placeholder="나이 입력" autofocus>
		</form>
	</c:when>
	
	<c:when test="${param.age >= 20 && param.age > 0}">
		<h3>당신은 성인입니다</h3>
	</c:when>
	
	<c:when test="${param.age < 20 && param.age > 0}">
		<h3>당신은 미성년자 입니다</h3>
	</c:when>
	
	<c:otherwise><%--default --%>
		<h3>나이가 정상적인 범위를 벗어났습니다 (음수는 처리되지 않습니다)</h3>
	</c:otherwise>
</c:choose>

</body>
</html>