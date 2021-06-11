<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Login Page </title>
  <script type="text/javascript">
    //유효 검사


  </script>
  <style>
    table,
    th,
    td {}

    table {
      position: absolute;
      /* 테이블 상하좌우 조정 */
      left: 500px;
      top: 350px;
    }
  </style>
  <link rel="stylesheet" href="NewFile.css">
</head>

<body>
  <form name="Login" action="home.html" method="get">
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
        <td><input type="text" name="ID" maxlength="8"></td>
        <!-- 아이디 입력값 8자리 제한 -->
      </tr>
      <tr>
        <td>비밀번호 : </td>
        <td><input type="password" name="pwd" maxlength="8"></td>
        <!-- 비밀번호 입력값 8자리 제한 -->
      </tr>
      <tr>
        <td colspan="3" align=center>
          <br>
          <input type="submit"  value="로그인">
          <!-- <input type="submit" value="로그인" <!-- onclick="alert('아이디와 비밀번호를 입력해주세요')">> -->
          <!-- 로그인버튼 추후 type 변경 예정 -->
          <input type="button" value="아이디/비밀번호 찾기" onclick="location.href='Find ID password.html' ">
          <!-- 회원 정보 찾기 type 추후 변경 예정 -->
          <input type="button" name="" value="회원가입" onclick="location.href='UserInfo.html'">
        </td>
      </tr>
    </table>
  </form>

</body>

</html>
