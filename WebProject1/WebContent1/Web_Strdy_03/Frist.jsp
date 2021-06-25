
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
값을 넣어 주는 작업
<%
pageContext.setAttribute("name", "page man");
request.setAttribute("name", "request man");
session.setAttribute("name", "session man");
application.setAttribute("name", "application man");

System.out.println("firstPage.:");
System.out.println("하나의 페이지 소성:"+pageContext.getAttributesScope("name"));
System.out.println("하나의 요청 속성:" +request.getAttribute("name"));
System.out.println("하나의 세션 속성:"+session.getAttribute("name"));
System.out.println("하나의 애플리케이션 속성:"+application.getAttribute("name"));
request.getRequestDispatcher("second.jsp").forward(request, response);
%>
디스패치 사용시 실제로 보여 주는 값은 세컨페이지 값을 출력해준다. 
포워딩을 사용하여 출력.
출력 값 은 밑에서 출력됨.
</body>
</html>