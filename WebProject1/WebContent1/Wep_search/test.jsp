 <%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn =DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:orcl","ora_user","young");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from employees");
	
	//rs.previous() 현재의 행해서 한행 뒤로 이동
	//rs.first(); 현재의 행에서 첫번쨰 행의 위치로 이동
	
	while (rs.next()) // 현재의 행에서 한행 앞으로 이동 
	{
		out.print("<h4>"+rs.getString("employee_id")+"&nbsp&nbsp&nbsp" + rs.getString("salary")+"</h4>");
		
	}
	stmt.close();
	conn.close();

%>


</body>
</html>