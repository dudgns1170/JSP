<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPro</title>
</head>
<body>
<%
// post 전송 데이터 한글 처리
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

// 기존 DB의 사용자 ID, PW
String dbId = "minky", dbPw = "minky12";


if (dbId.equals(id)) {
	if (dbPw.equals(pw)) {
		// 로그인 작업 -> 세션값 생성
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		%>
		<script>alert("로그인 되었습니다.");
		location.href = "home.html"
		</script>
		<%
	} else {
		%>
		<script>alert("비밀번호가 다릅니다.");
		location.href = "Login.jsp"
		</script>
		<%
	}
} else {
	%>
	<script>alert("아이디가 다릅니다.");
	location.href = "Login.jsp"
	</script>
	<%
}
%>
</body>
</html>