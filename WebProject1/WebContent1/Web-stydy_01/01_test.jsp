<%@page import="java.net.URLEncoder"%>
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
String id = "dud";
String pw ="dud12";
String name = "dud";
request.setCharacterEncoding("UTF-8");
if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw")))
{
	response.sendRedirect("01_main.jsp?name="+ URLEncoder.encode(name,"UTF-8"));
	}
else{
	response.sendRedirect("Demolog.jsp");
}
%>
<%-- --%>
</body>
</html>