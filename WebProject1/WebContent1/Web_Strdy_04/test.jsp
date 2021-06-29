<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    int age = Integer.parseInt(request.getParameter("age"));
    if( age < 19){
    %>
    <script type="text/javascript">
       alert("19세 미만으로 입장 불가능")
       history.go(-1)
       // history.back()
       // history.forward()
    </script>
    <% }else{
       request.setAttribute("name","임석재");
       //페이지 강제이동  
       RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
       // 객체 유지 후 이동 하여 데이터 값 유지 가능
       dispatcher.forward(request, response);
       }
    %>