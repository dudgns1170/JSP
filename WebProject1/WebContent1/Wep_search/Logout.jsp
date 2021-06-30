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
    alert("로그아웃 되었습니다.")</script>
<% 
// 1: 기존의 세션 데이터를 모두 삭제
    session.invalidate();ㅈ
    // 2: 로그아웃 후 홈 으로이동
    response.sendRedirect("search.jsp");
    %>
</body>
</html>