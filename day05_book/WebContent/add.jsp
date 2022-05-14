<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
	<h2>도서 추가</h2>
	<form method="POST" action="addResult.jsp">
		<div class="wrap row">
			<div class="left">
				<div>도서 이름</div>
				<div>저자</div>
				<div>출판사</div>
				<div>출판일자</div>
				<div>수량</div>
			</div>
			<div class="right">
				<div><input name="name" required></div>
				<div><input name="author" required></div>
				<div><input name="publisher" required></div>
				<div><input name="date" type="date" required></div>
				<div><input name="count" type="number" value="1" required></div>
			</div>
		</div>
		<button>추가</button>
	</form>
</main>
<%@ include file="footer.jsp" %>