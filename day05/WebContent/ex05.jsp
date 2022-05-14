<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL Tag 연산자 - 제어문은 못써도 연산자는 사용 가능</h1>
<hr>
<ul>
	<li>&#36;{10 + 1 } : ${10 + 1 }</li>
	<li>&#36;{5 - 3 } : ${5 - 3 }</li>
	<li>&#36;{2 * 3 } : ${2 * 3 }</li>
	<li>&#36;{5 / 2 } : ${5 / 2}</li>
	<li>&#36;{10 % 3 } : ${10 % 3 }</li>
	<li>&#36;{10 > 3 } : ${10 > 3}</li>
	<li>&#36;{10 < 3 } : ${10 < 3}</li>
	<li>&#36;{10 >= 3 } : ${10 >= 3}</li>
	<li>&#36;{10 <= 3 } : ${10 <= 3}</li>
	<li>&#36;{10 == 3 } : ${10 == 3}</li>
	<li>&#36;{10 != 3 } : ${10 != 3 }</li>
	<li>&#36;{10 > 3 && 10 % 2 == 0  } : ${10 > 3 && 10 % 2 == 0 }</li>
	<li>&#36;{10 > 3 || 10 % 2 != 0  } : ${10 > 3 || 10 % 2 != 0 }</li>
	<li>&#36;{!(10 > 3) } : ${!(10 > 3) }</li>
	<li>&#36;{empty test } : ${empty test }</li>
	<li>&#36;{10 % 2 == 0 ? '짝수' : '홀수' } : ${10 % 2 == 0 ? '짝수' : '홀수' }</li>
</ul>
</body>
</html>