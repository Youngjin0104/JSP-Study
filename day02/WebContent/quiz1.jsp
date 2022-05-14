<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
<style>
	div {
	align-content: center;
	
	}
</style>

</head>
<body>
<form action="quiz1Result.jsp">
<h1>NAVER</h1>
	<div>
		<div>아이디<br><input type="text" name="id" placeholder="@naver.com"></div>
		<div>비밀번호<br><input type="password" name="pw"></div>
		<div>비밀번호 재확인<br><input type="password" name="pw"></div>
		<div>이름<br><input type="text" name="name"></div>
		<div>생년월일<br>
		<span>
		<input type="text" name="year" placeholder="년(4자)">
		<select>
		<option>1월</option>
		<option>2월</option>
		<option>3월</option>
		<option>4월</option>
		<option>5월</option>
		<option>6월</option>
		<option>7월</option>
		<option>8월</option>
		<option>9월</option>
		<option>10월</option>
		<option>11월</option>
		<option>12월</option>
		</select>
		<input type="text" name="day" placeholder="일">
		</span></div>
		<div>성별<br>
		<select>
		<option>남성</option>
		<option>여성</option>
		</select></div>
		<div>본인 확인 이메일<br>
		<input type="text" name="email" placeholder="선택입력">
		</div>
		<div>휴대전화<br>
		<select>대한민국 +82
		<option>대한민국 +82</option>
		<option>일본 +82</option>
		<option>대만 +82</option>
		<option>중국 +82</option>
		<option>미국 +82</option>
		<option>호주 +82</option>
		</select><br>
		<input type="text" name="phonnum" placeholder="전화 번호 입력">
		<input type="submit" value="인증번호 받기"><br>
		<div><input type="submit" value="가입하기"></div>
		</div>
		
	</div>
</form>


</body>
</html>