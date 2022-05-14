<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
	<%
		int idx = Integer.parseInt(request.getParameter("idx"));
		list.remove(idx);
		response.sendRedirect(request.getContextPath() + "/list.jsp");	// 프로젝트의 문서 최상위 경로
	%>
	${pageContext.request.contextPath }
</main>
<%@ include file="footer.jsp" %>








