<%@page import="java.awt.Menu"%>
<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="com.seayan.javabeans.MemberBean" scope="session"/>

�ڹ� �� ��ü ���� ���� ����� ���� ���
<br>
�̸� : <%= member.getName() %>
<br>
���̵�: <%= member.getUserid() %>
<br>
���� ���� �� ����� ���� ����ϱ�
<%

member.setName("young");
member.setUserid("fsde");
%>
<br>

�̸�: <%= member.getName()%>
��й�ȣ : <%= member.getUserid() %>


</body>
</html>