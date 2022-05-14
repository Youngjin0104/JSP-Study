<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04Result.jsp</title>
</head>
<body>
<%!	// 거꾸로
	public int reverse(int num) {
		int ret = 0;
		while(num > 0) {
			ret *= 10;
			ret += num % 10;
			num /= 10;
		}
		return ret;
	}
%>
<%
	String num = request.getParameter("num");	// <input type="number" name="num" required>
	int num2 = Integer.parseInt(num);
%>
<h1>ex04Result.jsp</h1>
<hr>
<p><b>입력받은 값 : <%=num %></b></p>
<p><b>뒤집은 값 : <%=reverse(num2) %></b></p>

<del>&lt;%= out.print(num2) %></del>

</body>
</html>