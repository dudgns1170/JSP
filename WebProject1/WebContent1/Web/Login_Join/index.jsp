<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="">

.banner_main{
width:1000px;
height:500px;
position: relative;
margin: 0 auto;
}
ul.imgs{
padding:0;
margin:0;
list-style:none;
}

ul.imgs li{
position: absolute;
padding:0;
margin:0;
}

</style>
<title>Insert title here</title>
</head>
<body>

<div style="overflow:auto;">
</div>
<div id="container" style="margin-top: 150px;">
<div class="banner_main" style="border:1px solid black; margin-top:10px">

	<ul id="imgholder" class="imgs">
	<li><a href="#"><img src="${pageContext.request.contextPath}/images/LostArk_PC_BG_Mokoko_01.png" width="1000px" height="500px"> </a></li>
	</ul>

	</div>


</div>
<div class="sub_banner" style="position:absolute; width:1000px; margin-left:-500px; left:50%;">
<% 
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 					// 해당하는 오라클 드라이버를 가져와 사용할때
		// Connection conn = DriverManager.getConnection( url, uid, pw);
		//		jdbc:oracle:thin:[@hostname][:port]:"dbname", "password"
		Connection conn = DriverManager.getConnection(						//
				"jdbc:oracle:thin:@localhost:1521:orcl", "tpro", "0000");
		
		Statement stmt = conn.createStatement();							// 쿼리문 객체
		ResultSet rs = stmt.executeQuery("select * from studio");
		for (int i=0;i<5;i++){
			rs.next();
			out.println("<div class='banner' style='width:1000px; height:300px; border:1px solid black; display: block; margin-top:20px; margin-right:90px;'>");
			try{
				//img print
				InputStream in = rs.getBinaryStream("studio_img");
				BufferedImage bimg = ImageIO.read(in);
				in.close();
				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				ImageIO.write(bimg, "jpg", baos);
				baos.flush();
				byte[] imageInByteArray = baos.toByteArray();
				baos.close();
				String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(imageInByteArray);
				
					out.println("<ul class='imgs'>");
					out.println("<li>");
					out.println("<table>");
					out.println("<tr>");
					out.println("<td rowspan='4'><img src='data:x-image/jpg;base64,"+b64+"' width='450px' height='300px'/></td>");
					out.println("<td><h3>"+rs.getString("studio_name")+"</h3></td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<td>"+rs.getString("studio_address")+"</td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<td>"+rs.getString("studio_phone")+"</td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<td>"+rs.getString("product1_name")+rs.getString("product1_price")+"</td>");
					out.println("</tr>");
					out.println("</table>");
					out.println("</li>");
					out.println("</ul>");
					out.println("</div>");
			}catch(Exception e){
				
			}
		}
		stmt.close();
		conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	

	
</div>
<div id="footer" style="position:absolute; margin-top:350px;">
footer
</div>
</body>
</html>