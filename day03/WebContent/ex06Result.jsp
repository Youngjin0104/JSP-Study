<%@ page import="java.util.ArrayList"%>
<%@ page import="beans.Account" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05Result.jsp - 로그인 처리 페이지</title>
</head>
<body>
<%!
	ArrayList<Account> list = new ArrayList<Account>();

	public Account login(String userid, String userpw) {	// userid, userpw를 전달받아서
		for(int i = 0; i < list.size(); i++) {	
			Account acc = list.get(i);
			if(acc.getUserid().equals(userid)) {		// 계정이 일치하면
				if(acc.getUserpw().equals(userpw)) {	// 비밀번호가 일치하면
					return acc;							// 일치하는 계정을 반환한다
				}
			}
		}
		return null;	// 계정이 없으면 null을 반환한다
	}
%>
<%
	// 계정을 DB에서 준비할 수 없으니, 대신 자바 클래스로 만들어둔 코드 (수정하지 마세요)
	list.add(new Account("itbank", "it", "아이티뱅크"));
	list.add(new Account("iu930516", "iu", "이지은"));
	list.add(new Account("test", "1234", "테스트"));
%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bean" class="beans.Account" />
<jsp:setProperty property="*" name="bean" />
<%--
	useBean : Account bean = new Account();		지정한 클래스로 비어있는 객체를 생성한다
	setProperty : getter/setter의 이름과 form의 name속성이 일치하면 파라미터를 속성에 대입한다
				  bean.set***(request.getParameter("***"));
				    첫 글자의 대소문자는 무시할 수 있다	
				  <input name="userid">	-> bean.setUserid(request.getParameter("userid"));
 --%>
<%
	Account acc;	// 일치하는 계정 객체를 저장할 참조변수
	String msg;		// 화면에 출력할 메시지를 저장할 참조변수
	
	if(request.getMethod().equalsIgnoreCase("post")) {
		acc = login(bean.getUserid(), bean.getUserpw());
		msg = (acc != null) ? acc.getUsername() + "님 안녕하세요~~" : "로그인 실패";
	}
	else {
		msg = "잘못된 접근";
	}
%>

<h2><%=msg %></h2>
</body>
</html>






