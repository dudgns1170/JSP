<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Login Page </title>
  <script type="text/javascript">
    //��ȿ �˻�


  </script>
  <style>
    table,
    th,
    td {}

    table {
      position: absolute;
      /* ���̺� �����¿� ���� */
      left: 500px;
      top: 350px;
    }
  </style>
  <link rel="stylesheet" href="NewFile.css">
</head>

<body>
  <form name="Login" action="home.html" method="get">
    <!-- ������ ������(����) ���� -->
    <table>
      <tr>
        <td colspan="3" align=center bgcolor="">
          <b>
            <font size=11>Login</font>
          </b>
        </td>
      </tr>

      <tr>
        <td>���̵� : </td>
        <td><input type="text" name="ID" maxlength="8"></td>
        <!-- ���̵� �Է°� 8�ڸ� ���� -->
      </tr>
      <tr>
        <td>��й�ȣ : </td>
        <td><input type="password" name="pwd" maxlength="8"></td>
        <!-- ��й�ȣ �Է°� 8�ڸ� ���� -->
      </tr>
      <tr>
        <td colspan="3" align=center>
          <br>
          <input type="submit"  value="�α���">
          <!-- <input type="submit" value="�α���" <!-- onclick="alert('���̵�� ��й�ȣ�� �Է����ּ���')">> -->
          <!-- �α��ι�ư ���� type ���� ���� -->
          <input type="button" value="���̵�/��й�ȣ ã��" onclick="location.href='Find ID password.html' ">
          <!-- ȸ�� ���� ã�� type ���� ���� ���� -->
          <input type="button" name="" value="ȸ������" onclick="location.href='UserInfo.html'">
        </td>
      </tr>
    </table>
  </form>

</body>

</html>
