<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
	<h2>도서 수정</h2>
	<form method="POST" action="modifyResult.jsp">
		<div class="wrap row">
			<div class="left">
				<div>도서 이름</div>
				<div>저자</div>
				<div>출판사</div>
				<div>출판일자</div>
				<div>수량</div>
			</div>
			<div class="right">
				<div><input name="name" value="${list[param.idx].name }" required></div>
				<div><input name="author" value="${list[param.idx].author }" required></div>
				<div><input name="publisher" value="${list[param.idx].publisher }" required></div>
				<div><input name="date" type="date" value="${list[param.idx].date }" required></div>
				<div><input name="count" type="number" value="${list[param.idx].count }" required></div>
				<input name="idx" type="hidden" value="${param.idx }">
			</div>
		</div>
		<button>수정</button>
	</form>
</main>
<%@ include file="footer.jsp" %>