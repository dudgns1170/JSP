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

자바 빈 객체 생성 이후 저장된 정보 출력
<br>
이름 : <%= member.getName() %>
<br>
아이디: <%= member.getUserid() %>
<br>
정보 변경 후 변경된 정보 출력하기
<%

member.setName("young");
member.setUserid("fsde");
%>
<br>

이름: <%= member.getName()%>
비밀번호 : <%= member.getUserid() %>


</body>
</html>