
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� �־� �ִ� �۾�
<%
pageContext.setAttribute("name", "page man");
request.setAttribute("name", "request man");
session.setAttribute("name", "session man");
application.setAttribute("name", "application man");

System.out.println("firstPage.:");
System.out.println("�ϳ��� ������ �Ҽ�:"+pageContext.getAttributesScope("name"));
System.out.println("�ϳ��� ��û �Ӽ�:" +request.getAttribute("name"));
System.out.println("�ϳ��� ���� �Ӽ�:"+session.getAttribute("name"));
System.out.println("�ϳ��� ���ø����̼� �Ӽ�:"+application.getAttribute("name"));
request.getRequestDispatcher("second.jsp").forward(request, response);
%>
����ġ ���� ������ ���� �ִ� ���� ���������� ���� ������ش�. 
�������� ����Ͽ� ���.
��� �� �� �ؿ��� ��µ�.
</body>
</html>