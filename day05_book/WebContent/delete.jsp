<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
	<h2>도서 삭제</h2>
	<div class="wrap row">
		<div class="left">
			<div>도서 이름</div>
			<div>저자</div>
			<div>출판사</div>
			<div>출판일자</div>
			<div>수량</div>
		</div>
		<div class="right">
			<div>${list[param.idx].name }</div>
			<div>${list[param.idx].author }</div>
			<div>${list[param.idx].publisher }</div>
			<div>${list[param.idx].date }</div>
			<div>${list[param.idx].count }</div>
		</div>
	</div>
	<button id="deleteBtn">삭제</button>
	<script>
		const deleteBtn = document.getElementById('deleteBtn');
		const bookName = '${list[param.idx].name }';	// EL Tag의 값을 Javascript에게 넘기기
		
		const deleteHandler = () => {
			const answer = confirm('정말 [' + bookName + '] 도서를 삭제하시겠습니까?');
			if(answer) {
				location.href = 'deleteResult.jsp?idx=${param.idx}';
			} 
			else {
				history.go(-1);
			}
		};	
		
		deleteBtn.onclick = deleteHandler;
	</script>
</main>
<%@ include file="footer.jsp" %>








