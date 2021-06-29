<%@page import="javax.naming.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
Connection conn = null;
String sql = "INSERT INTO student10(num,name) VALUES(?,?)"; //쿼리문 = 자신이 값을 넣고 싶은 테이블과 칼럼명을 써주세요
try{
   Context init = new InitialContext();
   DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
   conn = ds.getConnection();
   PreparedStatement stmt = conn.prepareStatement(sql);
       
   String[] arr=new String[]{"html","javascript","jsp","oracle"};
       
   for(int i=1;i<=4;i++){
      stmt.setInt(1,i);
      stmt.setString(2,arr[i-1]);
             
      if(stmt.executeUpdate() !=0){
        out.println("<h1>"+i+"번 레코드를 등록하였다.</h1>");
      }
   }
}catch(Exception e){
   out.println("<h3>등록 실패</h3>");
   e.printStackTrace();
 }
%>   
 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<body>
</body>