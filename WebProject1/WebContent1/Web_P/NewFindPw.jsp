<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	
if(true) %>
<script>
			alert("��й�ȣ�� ���������� ����Ǿ����ϴ�.");
		</script>
<%
		}
	else {
%>
		<script>
			alert("��й�ȣ ���濡 �����߽��ϴ�.");
		</script>
<%		
		}
	}else {
%>
	<script>
		alert("���ο� ��й�ȣ�� �Է����ּ���");
	</script>
<%		
	}
%>

</body>
</html>