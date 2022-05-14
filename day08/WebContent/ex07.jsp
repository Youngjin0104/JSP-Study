<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day08.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07 - c:forEach</title>
</head>
<body>
<%
	Member[] arr = {
		new Member("이지은", 29),	
		new Member("홍진호", 38),	
		new Member("배성재", 44),	
		new Member("김희철", 38),	
		new Member("김진수", 20),	
	};
	ArrayList<Member> list = new ArrayList<Member>(Arrays.asList(arr));
	
	pageContext.setAttribute("arr", arr);
	pageContext.setAttribute("list", list);
%>
<h1>c:forEach</h1>
<hr>
<h3>배열의 요소를 화면에 반복문으로 출력하기</h3>
<ul>
	<c:forEach var="member" items="${arr }">
		<li>${member.name } : ${member.age }</li>
	</c:forEach>
</ul>


<h3>리스트의 요소를 화면에 반복문으로 출력하기</h3>
<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>index</th>
			<th>count</th>
			<th>이름</th>
			<th>나이</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="member" items="${list }" varStatus="st">
		<tr style="background-color: ${st.index % 2 == 0 ? 'skyblue' : 'salmon' }">
			<td>${st.index }</td><%--0부터 --%>
			<td>${st.count }</td><%--1부터 --%>
			<td>${member.name }</td>
			<td>${member.age }</td>
		</tr>		
		</c:forEach>
	</tbody>
</table>

<h3>횟수에 의한 반복</h3>

<ul>
	<c:forEach var="i" begin="0" end="10" step="1"><%-- end범위를 포함하여 반복한다 --%>
		<li>
			${i }
			<c:if test="${i % 2 == 0 }"> : 짝수</c:if>
			<c:if test="${i % 2 != 0 }"> : 홀수</c:if>
		</li>
	</c:forEach>
</ul>

</body>
</html>






