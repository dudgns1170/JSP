<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>상세 페이지</title>

    <style media="screen">
      #top{
        text-align : center;
        border : 3px solid gray;
        background-color : gray;
        pardding : 0px;
        margin : 40px;
        witdh : 0px;
        color : black;
      }

      .much{
         margin-top : 50px;

      }
      .much_name{
        text-align : center;
        border-botom : 3px solid gray;
      }
      .introduce{
        border : 3px solid gray;
        margin-top : 50px;
        width : 600px;
        margin-left : 100px;
      }
      
      .day{
      text-align : center;
      margin-top : 50px;
      }
      
      .textname{
      text-align : center;
      }
      
      button{		
        width : 120px;
        height : 40px;
        background-color : #808080;
        color : white;
        font-size : 16px;
        font-weight : bold;
        border-radius: 20px;
		top : 50%;
		left : 50%;
		margin-bottom : 30px;
      }
      
      button:hover{
          cursor : pointer;
      }
      
      ul{
      margin-right : 10px;
      }
      
      
      
      #but{
      text-align : center;
      margin-top : 50px;
      }

      #main {
      display :flex;
      justify-content : center;
      }
      
      #text{
      text-align : center;
      border : 3px solid gray;
      margin-top : 50px;
      margin-right : 40px;
      margin-left : 40px;
      }
      
    </style>
  </head>
  <body>
    <div id="top">
      <h1>인우네 사진관</h1>
      <h3>수원시 / 영통구<h3>
    </div>
 
<div id ="main">
    <div class="much">
    <img src = "http://via.placeholder.com/600x400" alt="샘플이미지">
    </div>
    <div class="introduce">
      <div class="much_name">
        <h2>가격<h2>
      </div>

      <ul>
        <li>증명 사진 : 15,000원</li><br>
        <li>칼라 사진 : 15,000원</li><br>
        <li>흑백 사진 : 15,000원</li><br>
        <li>여권 사진 : 15,000원</li><br>
        <li>컨셉 사진 : 40,000원</li><br>
      </ul>
     </div>
    </div>
    
    <div id = "text">
    <div class = "text_name">
    <h2>인우네 사진관 소개</h2>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    </div>

  
     <div id = "but">  
       <button type="button" name="button">예약하기</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <button type="button" name="button">장바구니</button>
       </div>
     
    </body>
</html>