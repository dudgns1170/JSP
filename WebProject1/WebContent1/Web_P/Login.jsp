<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <title>Login Page </title>


</head>
 <link rel="stylesheet" href="NewFile.css">
<body>
  <form  name="log"action = "sessionLoginPro.jsp" method="post">
   <!-- 전송할 페이지(서버) 지정 -->
    <table>
      <tr>
        <td colspan="3" align=center bgcolor="">
          <b>
            <font size=11>Login</font>
          </b>
        </td>
      </tr>

      <tr>
        <td>아이디 : </td>
        <td><input type="text" name="id" maxlength="20"></td>
         <!-- 아이디 입력값 8자리 제한 -->
      </tr>
      <tr>
          <td>비밀번호 : </td>
        <td><input type="password" name="pw" maxlength="15"></td>
         <!-- 비밀번호 입력값 8자리 제한 -->
      </tr>
      <tr>
        <td colspan="3" align=center>
          <br>
          <input type="submit"  value="로그인" >
           <!-- <input type="submit" value="로그인" <!-- onclick="alert('아이디와 비밀번호를 입력해주세요')">> -->
     <!-- 로그인버튼 추후 type 변경 예정 -->
          <input type="button" value="아이디/비밀번호 찾기" onclick="location.href='Find ID password.html'" >
        <!-- 회원 정보 찾기 type 추후 변경 예정 -->
          <input type="button" name="" value="회원가입" onclick="location.href='UserInfo.html'">
        </td>
      </tr>
    </table>
  </form>

</body>

</html>
