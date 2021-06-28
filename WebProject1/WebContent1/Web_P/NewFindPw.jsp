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
			alert("비밀번호가 정상적으로 변경되었습니다.");
		</script>
<%
		}
	else {
%>
		<script>
			alert("비밀번호 변경에 실패했습니다.");
		</script>
<%		
		}
	}else {
%>
	<script>
		alert("새로운 비밀번호를 입력해주세요");
	</script>
<%		
	}
%>

</body>
</html>