<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
						scope="session" ���� ����� �տ��� ����� ������ ������ ���·ο�  			
<jsp:useBean id="member" class="com.seayan.javabeans.MemberBean" scope="page"/>
<hr>
�ڹ� �� ��ü ���� �� ����� ���� ���
<br>

�̸�: <jsp:getProperty property="name" name="member"/>
<br>
���̵� : <jsp:getProperty property="userid" name="member"/>
<hr>
<br>
���� ������ �� ����� ���� ���
<br>
<jsp:setProperty property="name" name="member" value="�ӿ���"/>
<jsp:setProperty property="userid" name="member" value="dudgns12"/>
�̸�:<jsp:getProperty property="name" name="member"/>
<br>
���̵�: <jsp:getProperty property="userid" name="member"/>
<br>
</body>
</html>