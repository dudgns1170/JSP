<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>회원 가입 입력</h2>
<br>
<form action="Member.jsp" method="post">
<table>
<tr>
<td>이름 </td>
<td><input type="text" name="name" size="20">  </td>
</tr>
<tr>
<td> 아이디</td>
<td><input type="text" name= "userid" size="20"></td>
</tr>
<tr>
<td> 별명</td>
<td><input type="text" name= "nickname" size="20"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name= "pwd" size="20"></td>
</tr>
<tr>
<td>이메일</td>
<td><input type="text" name= "email" size="20"></td>
</tr>
<tr>
<td>전화번호</td>
<td><input type="text" name= "phone" size="20"></td>
</tr>

<tr>
<td><input type="submit" value="취소"></td>
<td><input type="submit" value="전송"></td>

</tr>





</table>



</form>
</body>
</html>