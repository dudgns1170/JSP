<%--지시자  --%>
<%-- 
<%@ page(지시자) language(속성)="java"(값) contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    지시자 종류 
   page - 해당 JSP 페이지의 전반적인 환경설정
  ex- <%@ page extends="java.efs.jp,gdd" %>
  ex- <%@ page import ="java.util.cfads"%>
  
  
   include - 현제 페이지에 다르 파일의 내용을 삽입시 사용 
   ex- <%@ include file ="foter.jsp"%>
   tagilb - 태그 라이브러리에서 태그를 꺼내와서 사용할 수 있는 제공
   --%>
    
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%-- 선언문 --%>
<%!
String Str ="hi";
int a= 5,b =-5;
public int abs(int v){
	if(v<0){
		v =-v;
	}
	return v;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> login! </h1>
<%-- 스크립트 문--%> 
<%--JSP 테그  --%>
<%
out.print("Hello Jsp");
%>
<%

out.print(Str);
out.print("<br>");
out.print(b+"절대값은"+abs(b));
out.print("<br>");
int n1 = 20;
int n2 = 10;
int add= n1+n2;
out.print(n1 + "+" + n2+ "="+ add);
%> 
<%=n1%>+<%=n2%>=<%=add %>
<img src="/image/1.JPG">
</body>
</html>