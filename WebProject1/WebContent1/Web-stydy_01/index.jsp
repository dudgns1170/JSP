<%--������  --%>
<%-- 
<%@ page(������) language(�Ӽ�)="java"(��) contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    ������ ���� 
   page - �ش� JSP �������� �������� ȯ�漳��
  ex- <%@ page extends="java.efs.jp,gdd" %>
  ex- <%@ page import ="java.util.cfads"%>
  
  
   include - ���� �������� �ٸ� ������ ������ ���Խ� ��� 
   ex- <%@ include file ="foter.jsp"%>
   tagilb - �±� ���̺귯������ �±׸� �����ͼ� ����� �� �ִ� ����
   --%>
    
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%-- ���� --%>
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
<%-- ��ũ��Ʈ ��--%> 
<%--JSP �ױ�  --%>
<%
out.print("Hello Jsp");
%>
<%

out.print(Str);
out.print("<br>");
out.print(b+"���밪��"+abs(b));
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