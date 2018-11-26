<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
	<form name="sign_in" method="get">
	
	<label> ID : <input type = "text" size = "15" value =""></label><br>
	<label> PW :  <input id = "passwd" type = "password"
	size = "15" value = ""></label>
	<input type = "image" src = "../assets/user_signin/login" name = "submit"
	value = "submit">
	<br><br>
	
	<input type = "button" name = "signup" onClick	= "location.href = '../user_signup/user_signup.jsp'"; 
	value = "회원가입">
	
	</form>

</body>
</html>