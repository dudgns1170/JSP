<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
    alert("�α׾ƿ� �Ǿ����ϴ�.")</script>
<% 
// 1: ������ ���� �����͸� ��� ����
    session.invalidate();��
    // 2: �α׾ƿ� �� Ȩ �����̵�
    response.sendRedirect("search.jsp");
    %>
</body>
</html>