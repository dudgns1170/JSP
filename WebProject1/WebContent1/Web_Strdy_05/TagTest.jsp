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
String ueseID = request.getParameter("userId");
String uwerPwd =request.getParameter("uesrPwd");
String loginCheck= request.getParameter("loginCheck");
if(loginCheck.equals("user")){
%>
 �׼� �±� ����
<jsp:forward page="Mains.jsp">
	<jsp:param value='<%=URLEncoder.encode("����","UTF-8") %>' name="userName"/>
</jsp:forward>
<%
}else {%>
<jsp:forward page="Mains.jsp">
<jsp:param value='<%=URLEncoder.encode("����","UTF-8") %>' name="userName"/>
</jsp:forward>
<% }
%>
</body>
</html>