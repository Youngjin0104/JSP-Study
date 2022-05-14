<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04Result.jsp - 로그인 처리 페이지</title>
</head>
<body>
<%!
	ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
%>
<%
	// 계정을 DB에서 준비할 수 없으니, 대신 컬렉션으로 만들어둔 코드 (수정하지 마세요)
	HashMap<String, String> account1 = new HashMap<String, String>();
	account1.put("userid", "itbank");
	account1.put("userpw", "it");
	account1.put("username", "아이티뱅크");
	list.add(account1);
	
	HashMap<String, String> account2 = new HashMap<String, String>();
	account2.put("userid", "iu930516");
	account2.put("userpw", "iu");
	account2.put("username", "이지은");
	list.add(account2);
	
	HashMap<String, String> account3 = new HashMap<String, String>();
	account3.put("userid", "test");
	account3.put("userpw", "1234");
	account3.put("username", "테스트");
	list.add(account3);
%>

<%
	// 여기에서 로그인을 처리하여 화면에 메시지를 출력하세요
	// 로그인 성공이면, 사용자 이름을 출력하고
	// 로그인 실패이면, 계정오류 혹은 비밀번호 오류를 표현하지 말고, 그냥 로그인 실패라고 출력하세요
	// 위 내용을 POST로 처리하세요
	
	// 1) 사용자 입력 파라미터를 전달받는다
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	
	// 2) 입력받은 내용과, 리스트에 일치하는 계정이 있는지 확인하여, 결과메시지를 생성한다
	String msg = "로그인 실패";
	
	for(int i = 0; i < list.size(); i++) {	// i : iterable, index
		HashMap<String, String> acc = list.get(i);
		if(acc.get("userid").equals(userid)) {		// 계정이 일치하면
			if(acc.get("userpw").equals(userpw)) {	// 비밀번호가 일치하면
				msg = acc.get("username") + "님 안녕하세요~";
				break;
			}
		}
	}
	
	// 3) 결과 메시지를 출력한다
	// 4) 메서드가 post가 아니면 되돌리기
	if("post".equalsIgnoreCase(request.getMethod()) == false) {
		msg = "<script>" + 
				"alert('잘못된 접근 !!');" + 
				"history.go(-1);" + 
				"</script>";
	}
	
	// list.get(int index)		// list.get(0)
	// map.get(String key)		// map.get("userid")
%>
<h2><%=msg %></h2>
</body>
</html>






