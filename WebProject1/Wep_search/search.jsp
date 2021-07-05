<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common_menu.jsp" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
clear:left;
width:80%;
margin: 10px auto 10px auto;
border:1px solid black;
}
th{
width:30px;
border-bottom:1px solid black;
}
td{
width: 100px;
padding:10px;

border-bottom:1px solid black;
}
#search_body{
clear:left;
position:relative;
display:grid;
grid-template-rows : 350px 1000px; 
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="search_body">
	  <div id="search_title"><h1 style="margin-left:150px">사진관 검색</h1>
	  	  <form action="search_act.jsp" method="post">
			<table name="checkbox">
			  <tr>
			    <th rowspan="2">지역</th>
				    <td ><input type="radio" name="region" value="seoul" checked="checked">서울</td>
				    <td ><input type="radio" name="region" value="gyunggi">경기</td>
				    <td ><input type="radio" name="region" value="gangwon">강원</td>
				    <td ><input type="radio" name="region" value="inchun">인천</td>
				    <td rowspan="2" align="center"><input type="submit" value="검색"></td>
			  </tr>
			  <tr>
				    <td ><input type="radio" name="region" value="junla">전라</td>
				    <td ><input type="radio" name="region" value="gyungsang">경상</td>
				    <td ><input type="radio" name="region" value="jeju">제주</td>
				    <td ><input type="radio" name="region" value="chungchung">충청</td>
			  </tr>
			  <tr>
			    <th>가격</th>
			    <td ><input type="checkbox" name="price" value="between 0 and 20000">20,000원<br>&nbsp;&nbsp;미만</td>
			    <td ><input type="checkbox" name="price" value="between 20000 and 50000">20,000원 ~<br>&nbsp;&nbsp;50,000원</td>
			    <td ><input type="checkbox" name="price" value ="between 50000 and 70000">50,000원 ~<br>&nbsp;&nbsp;70,000원</td>
			    <td ><input type="checkbox" name="price" value="between 70000 and 100000">70,000원 ~<br>&nbsp;&nbsp;100,000원</td>
			    <td ><input type="checkbox" name="price" value="between 100000 and 900000">100,000원<br>&nbsp;&nbsp;이상</td>
			  </tr>
			  <tr>
			    <th>평점</th>
			    <td ><input type="checkbox" name="star" value="1">★☆☆☆☆</td>
			    <td ><input type="checkbox" name="star" value="2">★★☆☆☆</td>
			    <td ><input type="checkbox" name="star" value="3">★★★☆☆</td>
			    <td ><input type="checkbox" name="star" value="4">★★★★☆</td>
			    <td ><input type="checkbox" name="star" value="5" checked="checked">★★★★★</td>
			  </tr>
			  <tr>
			    <th>태그</th>
			    <td ><input type="checkbox" name="tag" value="증명">증명사진</td>
			    <td ><input type="checkbox" name="tag" value="여권">여권사진</td>
			    <td ><input type="checkbox" name="tag" value="가족">가족사진</td>
			    <td ><input type="checkbox" name="tag" value="컨셉">컨셉사진</td>
			    <td ><input type="checkbox" name="tag" value="우정">우정사진</td>
			  </tr>
			</table>
		  </form>
		</div>
	<div id="contents" style="height: 100%; width:80%">
	  <ul>
	    <li>list1</li>
	  </ul>
	</div>
	</div>
	<input type="button" value="로그아웃" onclick="location.href='Logout.jsp'">
</body>
</html>