<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// quiz2에서 넘어온 파라미터를 처리하고나서 
	request.setCharacterEncoding("UTF-8");
	
	String theme = request.getParameter("theme");
	
	// 쿠키를 만들어서 클라이언트에게 보내면 된다
	Cookie c = new Cookie("theme", theme);
	c.setMaxAge(60 * 60 * 24 * 30);	// 초 분 시 일
	response.addCookie(c);
	// 2. 쿠키를 생성하고 응답에 넣는다 (클라이언트에 전달한다)
	
	response.sendRedirect("quiz2.jsp");	
	// 3. 클라이언트는 리다이렉트에 의해서 자동으로 새로운 요청을 시도한다	
	
	// 1) 응답에 쿠키가 담겨있으니 쿠키를 꺼내서 브라우저 저장소에 넣어둔다
	// 2) 리다이렉트 명령을 받았으니, 지정받은 quiz2.jsp로 새로운 요청 전달을 준비한다
	// 3) 요청을 전달할 때, 브라우저 저장소에 쿠키가 있으니, 해당 쿠키를 요청에 포함시켜 같이 전송한다
%>

</body>
</html>