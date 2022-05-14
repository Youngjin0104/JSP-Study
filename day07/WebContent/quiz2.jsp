<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
<style>
	
</style>
</head>
<body>

<header style="display: flex; 
			   justify-content: space-between;
			   align-items: center;">
			   
	<h1>cookie문제 2</h1>
	<form method="POST" action="quiz2Process.jsp">
		<select name="theme">	<!-- 4. 쿠키에 담긴 값을 활용하여 응답을 만들어서 브라우저에게 보낸다 -->
			<option value="light" ${cookie.theme.value == 'light' ? 'selected' : '' }>밝게</option>
			<option value="dark" ${cookie.theme.value == 'dark' ? 'selected' : '' }>어둡게</option>
		</select>
		<input type="submit" value="변경"><!-- 1. 파라미터를 서버에 전송 -->
	</form>
</header>
<hr>
<main>
	<p>아버지 가방에 들어가신다</p>
</main>
${cookie.theme.value}
<script>
	<!-- 4. 쿠키에 담긴 값을 활용하여 응답을 만들어서 브라우저에게 보낸다 -->
	const theme = '${cookie.theme.value}';	// EL Tag는 쿠키에 보다 손쉽게 접근이 가능하다
	const body = document.querySelector('body');
	
	const flag = theme === 'light';

	body.style.backgroundColor = flag ? 'white' : 'dimgrey';
	body.style.color = flag ? 'black' : 'white';
	
</script>
</body>
</html>