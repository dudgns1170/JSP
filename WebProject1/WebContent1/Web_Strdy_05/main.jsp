<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="red">
이파일은 red.jsp입니다.
<br>브라우저에 배경색이 빨간색
<br>노란색
<hr>forward 액션 태그가 실행되면  이페이지의 내용의 출력 되지 않습니다.
<br>
<jsp:forward page="test.jsp"/>
<
</body>
</html>