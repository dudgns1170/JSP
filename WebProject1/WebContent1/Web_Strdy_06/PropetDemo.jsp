<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
						scope="session" 으로 변경시 앞에서 저장된 정보를 유지한 상태로옴  			
<jsp:useBean id="member" class="com.seayan.javabeans.MemberBean" scope="page"/>
<hr>
자바 빈 객체 생성 후 저장된 정보 출력
<br>

이름: <jsp:getProperty property="name" name="member"/>
<br>
아이디 : <jsp:getProperty property="userid" name="member"/>
<hr>
<br>
정보 변경한 후 변경된 정보 출력
<br>
<jsp:setProperty property="name" name="member" value="임영훈"/>
<jsp:setProperty property="userid" name="member" value="dudgns12"/>
이름:<jsp:getProperty property="name" name="member"/>
<br>
아이디: <jsp:getProperty property="userid" name="member"/>
<br>
</body>
</html>