<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%	pageContext.setAttribute("naver", "https://book.naver.com/search/search.nhn?query="); %>

<%
	// 검색목록만 가져오기
	request.setCharacterEncoding("UTF-8");
	String word = request.getParameter("word");
%>

<main>
	<h2>도서 목록</h2>
	<div class="wrap">
		<form method="POST">
			<input id="search" name="word" 
				   placeholder="도서이름, 저자로 검색하세요" 
				   value="${param.word }" autocomplete="off" required >
			<input type="submit" value="검색">
		</form>
	</div>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>도서명</th>
				<th>저자</th>
				<th>출판사</th>
				<th>출판일자</th>
				<th>수량</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			for(int i = 0; i < list.size(); i++) {
				pageContext.setAttribute("i", i);
				Book b = list.get(i);
				boolean flag1 = word == null;
				boolean flag2 = word != null && (b.getName().contains(word) || b.getAuthor().contains(word));
				if(flag1 || flag2) {
				%>
			<tr>
				<th>${i + 1 }</th>
				<th><a href="${naver }${list[i].name }" target="_blank">${list[i].name }</a></th>
				<th><a href="${naver }${list[i].author }" target="_blank">${list[i].author }</a></th>
				<th>${list[i].publisher }</th>
				<th>${list[i].date }</th>
				<th>${list[i].count }</th>
				<th><a href="${pageContext.request.contextPath }/modify.jsp?idx=${i}">수정</a></th>
				<th><a href="delete.jsp?idx=${i }">삭제</a></th>
			</tr>
				<%
				}
			}
		%>
		</tbody>
	</table>
</main>
<%@ include file="footer.jsp" %>