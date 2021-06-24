<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>설문조사 결과</h2>
<%
request.setCharacterEncoding("UTF-8");
String name =request.getParameter("name");
out.println("이름: <b>"+name+"</b><br>");
String gender = request.getParameter("gender");

out.println("성별:");
if(gender.equals("male")){
	out.println("<b> 남자</b><br>");
}
else{
	out.println("<b> 여자</b><br>");
}
String seasonArr[] = request.getParameterValues("season");
out.println("당신이 좋아 하는 계절은");

%>
</body>
</html>