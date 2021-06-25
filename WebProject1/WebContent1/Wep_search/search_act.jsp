<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>필터 목록</h1>
	<% 
		request.setCharacterEncoding("UTF-8"); // 이코딩 형식
		
		String region = request.getParameter("region");
		out.print("선택 지역 : <b>"+region+"</b> 입니다.<br>");
		
		String priceArr[] = request.getParameterValues("price");
		out.print("선택한 금액은 ");
		for(String price:priceArr){
			out.print("<b>"+price+"</b> ");
		}
		out.println("입니다.<br>");
		String starsArr[] = request.getParameterValues("star");
		out.print("선택한 평점은 ");
		for(String stars:starsArr){
			out.print("<b>"+stars+"</b> ");
		}
		out.print("입니다.<br>");
		
		String tagArr[] = request.getParameterValues("tag");
		out.print("선택한 tag은 ");
		for(String tags:tagArr){
			out.print("<b>"+tags+"</b> ");
		}
		out.print("입니다.<br>");
	%>
</body>
</html>