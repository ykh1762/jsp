<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// DB작업에 필요한 객체변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null; // 쿼리문이 select일 경우에 필요함.
	
	try {
		Context context = new InitialContext();
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/oracleDB");
		
		conn = ds.getConnection();
		
		stmt = conn.createStatement();
		
		String sql = "select * from lprod"; // 실행할 SQL문
		rs = stmt.executeQuery(sql); 
		out.write("실행한 쿼리문 : " + sql+"<br>");
		out.write("==== 쿼리문 실행 결과 ===="+"<br>");
		
		while(rs.next()) {
			out.write(" lprod_id : " + rs.getInt("lprod_id"   )+"<br>");
			out.write(" lprod_gu : " + rs.getString("lprod_gu")+"<br>");
			out.write(" lprod_nm : " + rs.getString("lprod_nm")+"<br>");
			out.write("--------------------------"+"<br>");
		}										    
		
		out.write("출력 끝.");
		
	}catch(SQLException e) {
		e.printStackTrace();
	}finally { // 반드시 실행되도록 finally안에 close()를 넣는다.
		if(rs!=null) try {rs.close();}catch(SQLException e2) {}
		if(stmt!=null) try {stmt.close();}catch(SQLException e2) {}
		if(conn!=null) try {conn.close();}catch(SQLException e2) {}
	}
	
	// localhost/connection/jdbc.jsp

%>
</body>
</html>