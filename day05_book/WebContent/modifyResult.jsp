<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<% 	request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="item" class="beans.Book" />
<jsp:setProperty name="item" property="*" />
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	list.add(idx, item);
	list.remove(idx + 1);
	response.sendRedirect(request.getContextPath() + "/list.jsp");
%>

<%@ include file="footer.jsp" %>