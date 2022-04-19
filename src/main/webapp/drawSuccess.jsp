<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 성공</title>
</head>
<body>
	<h2>회원 탈퇴 성공</h2>
	<hr>
	감사합니다. 안녕히 가세요.<br><br>	
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value="◀ 메인 화면 가기">
				</form>
			</td>
			<td>
				<form action="signup.jsp" method="post">
					<input type="submit" value="다시 가입 하기 ▶">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>