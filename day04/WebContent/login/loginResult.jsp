<%@page import="com.sun.glass.ui.Application"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<main>
로그인 처리
<%!
	public Member loginHandler(ArrayList<Member> list, Member user) {
		 for(int i = 0; i < list.size(); i++) {
			 Member m = list.get(i);
			 if(m.getUserid().equals(user.getUserid())) {
				 if(m.getUserpw().equals(user.getUserpw())) {
					 return m;
				 }
			 }
		 }
		 return null;
	}
%>
<%	
	request.setCharacterEncoding("UTF-8"); 
	ArrayList<Member> list = (ArrayList<Member>)application.getAttribute("list");
%>
<jsp:useBean id="login" class="beans.Member" />
<jsp:setProperty name="login" property="*" />
<%
	Member result = loginHandler(list, login);
	session.setAttribute("login", result);	// 반환값이 null이면 null이 들어간다
	response.sendRedirect("/day04/");
%>

</main>
</body>
</html>