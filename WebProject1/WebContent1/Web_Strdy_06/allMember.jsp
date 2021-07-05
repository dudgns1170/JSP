<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%!
//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
   Connection conn = null;
  //  Statement stmt = null;
//   ResultSet rs = null;
   PreparedStatement ptms =null;
   String url = "jdbc:oracle:thin:@lacalhost:1521:orcl";
   String uid = "ora_user";
   String pwd = "1234";
   String sql = "insert into member valuse(?,?,?,?,?)";
   //삽입 ex
   // String inserSql = "insert into member valuse()";
   //삽입 간단 ex
   //PreparedStatement pstmt =null; 매서드 호출
   
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String userid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String admin = request.getParameter("admin");


try{
	// jdbc 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//db연결
	conn= DriverManager.getConnection(url, uid, pwd);
			//Statement  객체 생성
	ptms = conn.prepareStatement(sql);
			///바인딩 변수 할당
	ptms.setString(1, name);
	ptms.setString(2, userid);
	ptms.setString(3, pwd);
	ptms.setString(4, email);
	ptms.setString(5, phone);
	//ptms.setInt(6, Integer.parseInt(admin));
	//SQL실행문 결과 처리
	ptms.executeUpdate();
} catch(Exception e)
{
	e.printStackTrace();
	}
finally{
	try{
		//사용한 리소스 해제
		if(ptms != null)
			ptms.close();
		if(conn != null)
			conn.close();
	}catch(Exception e)
	{
		e.printStackTrace();
	}
}





%>
      
     
</body>
</html>