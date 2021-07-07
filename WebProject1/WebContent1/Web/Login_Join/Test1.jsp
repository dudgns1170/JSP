<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
두번째 페이지 입니다.

<%
// 세션값 가져오기
String id = null;
if(session.getAttribute("cust_id") != null)
{
	 id = (String) session.getAttribute("cust_id"); 
}

%>
<%id = (String) session.getAttribute("cust_id");  %>
<input type="button" onclick="location.href='loginForm.jsp'" value="LogOut" />
</body>
</html>