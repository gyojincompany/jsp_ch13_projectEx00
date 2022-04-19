<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String m_id = request.getParameter("userID");		
		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webdb";
		String user = "root";
		String password = "12345";
		
		String sql = "DELETE FROM members WHERE id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;//sql 실행 객체
		
		try {
			Class.forName(driverName);//jdbc 드라이버 로딩
			conn = DriverManager.getConnection(url, user, password);//DB 연동			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			
			
			int dbFlag = pstmt.executeUpdate();//sql실행->실행 성공시 1 반환
			
			if(dbFlag == 1) {
				//out.println("회원 탈퇴 성공!!");
				response.sendRedirect("drawSuccess.jsp");
			} else {
				response.sendRedirect("drawErr.jsp");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}			
			
		}
	
	%>
</body>
</html>