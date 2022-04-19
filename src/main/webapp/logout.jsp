<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그 아웃</title>
</head>
<body>
	<h2>관리자 로그 아웃</h2>
	<hr>
	<%
		//session.invalidate();//모든 세션 내용 삭제
		
		Enumeration enun = session.getAttributeNames();
		
		while(enun.hasMoreElements()) {
			
			String sName = enun.nextElement().toString();//세션 이름 가져오기
			String sValue = session.getAttribute(sName).toString();//세션 속성값 가져오기
			
			//out.println(sName);
			//out.println(sValue);
			
			if(sValue.equals("space")) {
				session.removeAttribute(sName);
				out.println("로그아웃에 성공하셨습니다.");
				out.println("세션이름:" + session.getAttribute(sName));
				out.println("세션값:" + session.getAttribute(sValue));
			} else {
				out.println("로그아웃에 실패하셨습니다.");
			}
			
		}
	%>
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value="◀ 메인 화면 이동">
				</form>
			</td>			
		</tr>
	</table>
</body>
</html>