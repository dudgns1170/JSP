<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
�ι�° ������ �Դϴ�.

<%
// ���ǰ� ��������
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