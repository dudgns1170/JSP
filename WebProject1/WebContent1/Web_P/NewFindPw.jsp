<%@page import="javax.naming.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
Connection conn = null;
String sql = "INSERT INTO student10(num,name) VALUES(?,?)"; //������ = �ڽ��� ���� �ְ� ���� ���̺�� Į������ ���ּ���
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
        out.println("<h1>"+i+"�� ���ڵ带 ����Ͽ���.</h1>");
      }
   }
}catch(Exception e){
   out.println("<h3>��� ����</h3>");
   e.printStackTrace();
 }
%>   
 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<body>
</body>