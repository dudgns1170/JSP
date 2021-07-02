
<%@page import="com.sun.xml.internal.fastinfoset.util.PrefixArray"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%!
//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   String url = "jdbc:oracle:thin:@lacalhost:1521:orcl";
   String uid = "ora_user";
   String pwd = "1234";
   String sql = "select * from member";
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
   <table width="800" border="1">
      <tr>
         <th>이름</th>
         <th>아이디</th>
         <th>암호</th>
         <th>이메일</th>
         <th>전화번호</th>
         <th>권한(1:관리자, 2: 일반회원)</th>
      </tr>
      <%
         try{
        	 //            오라클 연동 하는법
            Class.forName("oracle.jdbc.driver.OracleDriver");
        	 //  컨넥션 생성 
            conn = DriverManager.getConnection(url, uid, pwd);
        	 // 쿼리를 통하여 sql 실행 
            rs = stmt.executeQuery(sql);
            while (rs.next()){
            	//출력 구문 
               out.println("<tr>");
               out.println("<td>"+rs.getString("name")+ "</td>");
               out.println("<td>"+rs.getString("userid")+ "</td>");
               out.println("<td>"+rs.getString("pwd")+ "</td>");
               out.println("<td>"+rs.getString("email")+ "</td>");
               out.println("<td>"+rs.getString("phone")+ "</td>");
               out.println("<td>"+rs.getString("admin")+ "</td>");
               out.println("</tr>");
            } //while 끝
         // 업데이트 문 에시
         //stmt.executeUpdate(insersql);
         } catch(Exception e){
            e.printStackTrace();
         } finally{
            try{
            	//문제가 생기지 않으면 발생 x
               if(rs != null) rs.close();
               if(stmt != null) stmt.close();
               if(conn != null) conn.close();
            } catch(Exception e){
               e.printStackTrace();
            }
         }
      %>
   </table>
</body>
</html>