<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- login process는 입력된 정보를 DB와 연결해주는 기능입니다. -->

<%	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	
	//db 연결을 위한 준비
	Connection conn = null;
	//  쿼리문을 사용 
	PreparedStatement pstmt = null;
	//결과값을 실행 한다.
	ResultSet rs = null;
	
	try{
		Context init = new InitialContext(); // 커넥션 풀을 이용하여 DB 연동
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/myoracle"); // connection name 불러오기
		// db를 연결 
		conn = ds.getConnection();
		//쿼리문의 ?의 사용을 해주는 
		pstmt = conn.prepareStatement("select * from members where cust_id =?");
		// 순서를 유의 
		pstmt.setString(1,id);
		// 쿼리문 실행 
		rs = pstmt.executeQuery();
		
		if(rs.next()){  
			   if(password.equals(rs.getString("cust_pw"))){ 
			    session.setAttribute("cust_id",id);
			    out.println("<script>");
			    out.println("alert('로그인 성공')");
			    out.println("location.href='main.jsp'"); //저장된 정보와 아이디와 비밀번호가 일치하면 main.jsp로 보낸다.
			    out.println("</script>");
			   }
			  }
			  out.println("<script>");
			  out.println("location.href='loginForm.jsp'");  // 일치하지 않으면 loginForm.jsp로 되돌아감
			  out.println("alert('아이디/비밀번호를 확인해주세요')");
			  out.println("</script>");
			  
			 }catch(Exception e){
			  e.printStackTrace();
			 }
%>

</body>
</html>