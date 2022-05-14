<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03Result.jsp</title>
</head>
<body>

	<h1>ex03Result.jsp</h1>
	<hr>
	<%
		// scriptlet : 제어문, 연산, 대입, 함수 호출
		String name = request.getParameter("name");	// String을 반환한다
		String age = request.getParameter("age");	// 만약 일치하는 name이 없으면 null을 반환한다
		
		// 나이가 20살 이상이면 성인이라고 출력하기
		int age2;
		String msg; 
		try {
			age2 = Integer.parseInt(age);
// 			msg = age2 >= 20 ? "성인입니다" : "미성년자입니다";
			if(age2 >= 20) {
				msg = "성인입니다";
			}
			else {
				msg = "미성년자입니다";
			}
		} catch(NumberFormatException e) {
			age2 = 0;
			msg = "나이를 잘못 입력했습니다";
		}
	%>
	<%-- expression 은 값을 출력하는 영역 (out.print()) --%>
	<p><%= name != null ? "이름 : " + name : "" %></p>
	<p><%= age != null ? "나이 : " + age : "" %></p>
	<p><%= msg %></p>
	<p><%= request.getQueryString() %></p>
	<a href="https://www.w3schools.com/tags/ref_urlencode.ASP">URL Encoding</a>

</body>
</html>



