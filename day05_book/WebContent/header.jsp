<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="beans.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 관리 사이트</title>
    <style>
        div, span, body, header, main, nav, ul, li, footer {
            margin: 0;
            padding: 0;
        }
        body {
            user-select: none;
            width: 100%;
        }
        header {
            display: flex;
            flex-flow: column;
            justify-content: center;
            align-items: center;
        }
        header > h1 {
            font-family: 'Cooper', Times, serif;
            font-size: 40pt;
            color: chocolate;
        }
        nav {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            border-top: 1px solid #dadada;
            border-bottom: 1px solid #dadada;
        }
        nav > ul > li {
            display: inline-block;
            width: 100px;
            height: 50px;
            line-height: 50px;
        }
        a {
            display: block;
            text-decoration: none;
            color: inherit;
        }
        li > a {
            font-size: 14pt;
            font-weight: bold;
        }
        li > a:hover {
            text-decoration: underline;
        }
        .indexImg {
        	margin: 20px auto;
        	display: flex;
        	background-image: url('${pageContext.request.contextPath}/img/bg.jpg');
        	width: 80%;
        	background-position: center;
        	background-size: 100%;
        	background-repeat: no-repeat;
        }
        main {
        	display: flex;
        	flex-flow: column;
        	justify-content: center;
        	align-items: center;
        }
        footer {
        	position: absolute;
        	bottom: 0;
        	width: 100%;
        	height: 50px;
        	display: flex;
        	justify-content: center;
        	align-items: center;
        	font-weight: bold;
        	font-size: 9pt;
        }
        table {
        	border-collapse: collapse;
        	width: 80%;
        	border: 2px solid black;
        	margin: 20px;
        	max-height: 500px;
        }
        thead {
        	display: block;
        }
        thead > tr {
        	background-color: antiquewhite;
        }
        tbody {
        	display: block;
        	max-height: 500px;
        	overflow-x: hidden;
        	overflow-y: scroll;  
        }
        tbody > tr:hover {
        	background-color: burlywood;
        }
        tr {
        	border-bottom: 1px solid #dadada;
        	height: 55px;
        }
        th {
        	display: table-cell;
        }
        .row, .column {
        	display: flex;
        	justify-content: center;
        	align-items: center;
        }
        .row {
        	flex-flow: row;
        }
        .column {
        	flex-flow: column;
        }
        .left div, .right div {
        	width: 200px;
        	height: 40px;
        }
        button {
        	all: unset;
        	margin: 20px auto;
        	width: 400px;
        	height: 40px;
        	background-color: antiquewhite;
        	border: 1px solid black;
        	font-size: 14pt;
        	font-weight: bold;
        	text-align: center;
        }
        #search {
        	all:unset;
        	border: 3px solid black;
        	padding: 10px;
        	width: 300px;
        	height: 40px;
        	text-align: center;
        	font-size: 14pt;
        	font-weight: bold;
        	transition-duration: 0.5s;
        }
        #search:focus {
        	width: 700px;
        	transition-duration: 0.5s;
        }
        #search + input[type="submit"] {
        	all: unset;
        	height: 60px;
        	border: 3px solid black;
        	background-color: #antiquewhite;
        	color: black;
        	font-size: 14pt;
        	width: 80px;
        	text-align: center;
        	font-weight: bold;
        	display: none;
        	transition-duration: 0.5s;
        }
        #search:focus + input[type="submit"], 
        #search + input[type="submit"]:focus,
        #search + input[type="submit"]:hover,
        #search + input[type="submit"]:active
        {
        	transition-duration: 0.5s;
        	display: inline;
        }
        table input[type="number"] {
        	width: 50px;
        }
        
    </style>
</head>
<%
	if(application.getAttribute("list") == null) {
		Book[] arr = {
			new Book("수학의 정석", "홍성대", "성지출판(주)", "1966-01-01", 5000),	
			new Book("달러구트 꿈 백화점", "이미예", "팩토리나인", "2020-07-08", 500),	
			new Book("공정하다는 착각", "마이클 샌델", "와이즈베리", "2020-12-01", 1000),	
			new Book("주린이도 술술 읽는 친절한 주식책", "최정희, 이슬기", "메이트북스", "2020-09-01", 345),	
			new Book("니클의 소년들", "콜슨 화이트헤드", "은행나무", "2020-12-05", 999),	
			new Book("스토리텔링 바이블", "대니얼 조슈아 루빈", "블랙피쉬", "2020-12-06", 1234),	
			new Book("트렌드 코리아 2021", "김난도, 전미영", "미래의창", "2020-10-07", 5050),	
			new Book("하루 한 장 마음챙김", "루이스 L. 헤이", "니들북", "2021-01-07", 2222),	
			new Book("어떻게 말해줘야 할까", "오은영", "김영사", "2020-10-08", 13),	
			new Book("마음챙김의 시", "류시화", "수오서재", "2020-09-15", 1000)	
		};
		application.setAttribute("list", new ArrayList(Arrays.asList(arr)));
		
	}
	ArrayList<Book> list = (ArrayList<Book>)application.getAttribute("list");
%>

<body>

    <header>
        <h1><a href="${pageContext.request.contextPath }/">Book Management Site</a></h1>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath }/list.jsp">목록</a></li>
                <li><a href="${pageContext.request.contextPath }/add.jsp">추가</a></li>
            </ul>
        </nav>
    </header>
