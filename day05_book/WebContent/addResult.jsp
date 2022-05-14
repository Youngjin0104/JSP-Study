<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<% 	request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="item" class="beans.Book" />
<jsp:setProperty name="item" property="*" />
<%
	if(list.add(item)) {
		response.sendRedirect(request.getContextPath() + "/list.jsp");
	}
%>

<%@ include file="footer.jsp" %>