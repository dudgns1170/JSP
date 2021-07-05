<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <% 
   Class.forName("oracle.jdbc.driver.OracleDriver");                // 해당하는 오라클 드라이버를 가져와 사용할때
   // Connection conn = DriverManager.getConnection( url, uid, pw);
   //      jdbc:oracle:thin:[@hostname][:port]:"dbname", "password"
   Connection conn = DriverManager.getConnection(                  //
         "jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "0319");
   
   Statement stmt = conn.createStatement();                     // 쿼리문 객체
   ResultSet rs = stmt.executeQuery("select * from employees");
   while (rs.next()){
      // rs. next()-한행한행 앞으로, 
      // rs.priviouse()-현재행에서 한행 뒤로, 
      // rs.first()-현재행의 첫번째 행의 위치로 이동, 
      // rs.last()-맨뒤로 이동
      out.print("<h6>" + rs.getString("employee_id")+"&nbsp&nbsp&nbsp"+ rs.getString("salary")+"</h6>");
   }
   
   // Statement stmt = conn.createStatement();
   // ResultSet rs = stmt.executeQuery("select * from member");
   // while (rs.next()){
   //   out.print("<h6>" + rs.getString("name")+"&nbsp&nbsp&nbsp"+ rs.getString("userid")+"</h6>");
   // }
   stmt.close();
   conn.close();
   %>
   
</body>
</html>