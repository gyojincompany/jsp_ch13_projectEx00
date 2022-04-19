<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트 관리</title>
</head>
<body>
	<h2>등록 회원 관리</h2>
	<hr>
	
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webdb";
		String user = "root";
		String password = "12345";
		
		String sql = "SELECT * FROM members";//모든 데이터 가져오기
		
		Connection conn = null;
		Statement stmt = null;//sql 실행 객체
		
		try {
			Class.forName(driverName);//jdbc 드라이버 로딩
			conn = DriverManager.getConnection(url, user, password);//DB 연동			
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			int count = 0;
			
			while(rs.next()) {
				count++;//count=count+1;
				String pId = rs.getString("id");
				String pPw = rs.getString("passwd");
				String pName = rs.getString("name");
				String pEmail = rs.getString("email");
				String pJoindate = rs.getString("signuptime");
				
				out.println(count + " : " + pId + " / " + pPw + " / " + pName + " / " + pEmail + " / " + pJoindate + "<br>");
			}			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}			
			
		}
	
	%>
	
	<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp" method="post">
					<input type="submit" value="◀ 회원 탈퇴 화면 실행">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value="관리자 로그아웃 ▶">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>