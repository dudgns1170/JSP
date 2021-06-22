<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 컨텍스트 패스<%= request.getContextPath()%> <br>
 요청한 방식<%= request.getMethod() %><br>
 요청한 URL <%=request.getRequestURL() %><br>
 요청한 URI <%= request.getRequestURI()%><br>
 요청한 쿼리스트링<%= request.getQueryString() %><br>
 서버의 이름<%= request.getServerName() %><br>
 프로토콜<%=request.getProtocol() %>
</body>
</html>