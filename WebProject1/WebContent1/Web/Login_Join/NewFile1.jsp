<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String answer = request.getParameter("answer");
String question = request.getParameter("question");
//String pw = request.getParameter("pw");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Context init = new InitialContext(); // 커넥션 풀을 이용하여 DB 연동
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB"); // connection name 불러오기
	conn = ds.getConnection();

	pstmt = conn.prepareStatement("select *  from cust_info where cust_id =? and cust_answer =? and cust_question =?");
	pstmt.setString(1, id);
	pstmt.setString(2, answer);
	pstmt.setString(3, question);
	//pstmt.setString(4, pw);
	rs = pstmt.executeQuery();
	// 이 쿼리문을 실핼 하곘다.

	rs.next();

%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	<%=rs.getString("cust_pw")%>
</body>
</html>


<%
} catch (Exception e) {
e.printStackTrace();
out.println("<script>");
out.println("alert('입력하신 회원은 없습니다.')");
out.println("</script>");
}
%>

