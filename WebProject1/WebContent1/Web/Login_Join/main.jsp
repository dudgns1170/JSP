<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 성공!
<%
// 세션값 가져오기
String id = (String) session.getAttribute("cust_id"); 
%>
<h1>Main page</h1>
<%=id %> 님이 로그인하였습니다.
<input type="button" onclick="location.href='loginForm.jsp'" value="LogOut" />
<a href="Test1.jsp">두 번쨰 페이지 입니다.</a>
</body>
</html>