<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>�������� ���</h2>
<%
request.setCharacterEncoding("UTF-8");
String name =request.getParameter("name");
out.println("�̸�: <b>"+name+"</b><br>");
String gender = request.getParameter("gender");

out.println("����:");
if(gender.equals("male")){
	out.println("<b> ����</b><br>");
}
else{
	out.println("<b> ����</b><br>");
}
String seasonArr[] = request.getParameterValues("season");
out.println("����� ���� �ϴ� ������");

%>
</body>
</html>