<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
 <jsp:useBean id="member" class="com.seayan.javabeans.MemberBean"/>
 <jsp:setProperty property="*" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>�Է��� �Ϸ�� ����</h2>
<br>
<table>
<tr>
<td>�̸� </td>
<td><jsp:getProperty property="name" name="member"/> </td>
</tr>
<tr>
<td> ���̵�</td>
<td><jsp:getProperty property="userid" name="member"/></td>
</tr>
<tr>
<td><jsp:getProperty property="nickname" name="member"/>   </td>
</tr>
<tr>
<td>��й�ȣ</td>
<td><jsp:getProperty property="pwd" name="member"/></td>
</tr>
<tr>
<td>�̸���</td>
<td><jsp:getProperty property="email" name="member"/>e</td>
</tr>
<tr>
<td>��ȭ��ȣ</td>
<td><jsp:getProperty property="phone" name="member"/>e</td>
</tr>
</table>
</body>
</html>