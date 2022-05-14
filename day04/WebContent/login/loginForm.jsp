<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
<h2>로그인</h2>

<form action="loginResult.jsp" method="POST">
	<p><input name="userid" placeholder="ID" autofocus required></p>
	<p><input name="userpw" type="password" placeholder="Password" required></p>
	<p><button>로그인</button></p>
</form>

</main>
</body>
</html>