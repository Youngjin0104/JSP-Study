<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h1>JSTL</h1>
<hr>
<div>
	<form>
		<select name="select">
			<c:forEach var="i" begin="1" end="7">
				<c:set var="fileName" value="ex0${i }.jsp" />
				<option ${param.select == fileName ? 'selected' : ''}>
					${fileName }
					</option>
			</c:forEach>
		</select>
		<input type="submit">
	</form>
</div>
<main style="border: 3px solid red; height: 900px; padding: 20px; margin: 20px;">
	<c:if test="${not empty param.select }">
		<jsp:include page="${param.select }" />
	</c:if>
</main>

</body>
</html>