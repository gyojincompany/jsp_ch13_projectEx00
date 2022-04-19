<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 화면</title>
<script type="text/javascript">
	function checkFun() {
		
		var f = document.user_info;
		
		if(f.userID.value.length == 0) {
			alert("아이디는 필수 사항입니다.");
			f.userID.focus();
			return false;		
		}
		else if(f.userPW.value.length == 0) {
			alert("비밀번호는 필수 사항입니다.");
			f.userPW.focus();
			return false;		
		} else {
			return true;
		}
	}

</script>
</head>
<body>
	<h2>관리자 로그인</h2>
	<hr>
	<form action="loginSuccess.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		아이디 : <input type="text" name="userID" size="16"><br><br>
		비밀번호 : <input type="password" name="userPW" size="16"><br><br>
		<input type="submit" value="관리자 로그인">		
	</form>
</body>
</html>