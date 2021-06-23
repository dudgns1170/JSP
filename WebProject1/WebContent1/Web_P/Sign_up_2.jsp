<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>회원가입</title>
    
    <style>
        #area{
            width:700px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        
        table{
            border:3px solid black
        }
        
        td{
            border:1px solid #98B4D4
        }
        
        #title{
            background-color:#98B4D4
        }
    </style>
</head>
<body>
	<form action="sessionSignUp.jsp" method="post">
	<div id="area">
    
        <br><br>
        <b><font size="6" color="gray" style="float:left"><center>회원가입</center></font></b>
        <br><br><br>
        
            <table>
                <tr>
                    <td id="title"><center>아이디</center></td>
                    <td>
                        <input type="text" name="id" maxlength="16">
                        <input type="button" value="중복확인" onclick="">    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title"><center>비밀번호</center></td>
                    <td>
                        <input style="width:50%" type="password" name="pw" maxlength="20">
                    </td>
                </tr>
                
                <tr>
                    <td id="title"><center>비밀번호 확인</center></td>
                    <td>
                        <input style="width:50%" type="password" name="pw_check" maxlength="20">
                        <!-- 비밀번호와 비밀번호 확인이 일치하지 않으면 경고문이 출력되고 맞게 입력했으면 경고문이 사라지거나
                        일치합니다 라는 문구가 출력되게 해야한다. -->
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>이름</center></td>
                    <td>
                        <input type="text" name="name" maxlength="10">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>성별</center></td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>생년월일</center></td>
                    <td>
                        <input style="width:20%" type="text" name="birth_yy" maxlength="4" placeholder="연도(4자리)" size="6" >
                        <!-- 4자리를 입력하지 않으면 박스 오른쪽에 경고문이 출력되게 해야한다. -->
                        <select style="width:11%" name="birth_mm">
                            <option value="">월</option>
                            <option value="01">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <input type="text" name="birth_dd" maxlength="2" placeholder="일" size="4" >
                        <!-- 만약 사용자가 31을 초과하는 숫자를 입력하거나 1 미만의 숫자를 입력하는 경우 
                        가장 가까운 정수(ex. 00->01 or 1 / 32 -> 31 or 30 or 28 or 29)로 바꾸는 조건문을 만들어야한다. -->
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>이메일</center></td>
                    <td>
                        <input style="width:100px"type="text" name="email_1" maxlength="30">@
                        <select name="email_2">         
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option> 
                            <option>직접 입력</option>                       
                        </select>
                        <input type="text" name="email_direct" maxlength="20" placeholder="직접 입력 선택 시 입력">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>휴대전화</center></td>
                    <td>
                        <input style="width:90px; text-align:center;" type="text" name="phone_1" placeholder="앞 3자리"/>&nbsp;-&nbsp;
                        <input style="width:115px; text-align:center;" type="text" name="phone_2" placeholder="중간 3~4자리"/>&nbsp;-&nbsp;
                        <input style="width:127px; text-align:center;" type="text" name="phone_3" placeholder="뒤 4자리"/>
                    </td>
                </tr>
                <tr>
                    <td id="title"><center>주소(도로명까지)</center></td>
                    <td>
                        <input style="width:100%" type="text" size="50" name="address"/>
                    </td>
                </tr>
                <tr>
                    <td id="title"><center>상세주소</center></td>
                    <td>
                        <input style="width:100%" type="text" size="50" name="address"/>
                    </td>
                </tr>
                <tr>
                    <td id="title"><center>회원정보 찾기 문답</center></td>
                    <td>
                        <select style="width:100%" name="question">
                            <option value="">문제 선택</option>
                            <option value="01">나의 보물 1호는?</option>
                            <option value="02">가장 기억에 남는 선생님 성함은?</option>
                            <option value="03">태어난 곳은?</option>
                            <option value="04">가장 좋아하는 스포츠 팀은?</option>
                            <option value="05">가장 기억에 남는 날짜는?</option>
                            <option value="06">성인이 되고 나서 가장 먼저 취득한 자격증은?</option>
                            <option value="07">자신의 장래희망은?</option>
                       
                        </select>
                        <input style="width:100%" type="text" name="answer" maxlength="100" placeholder="답변">
                        
                    </td>
                </tr>
            </table>
            </div>
        </form>
        
        <div id="area">
        <br><br>
        <b><font size="6" color="gray" style="float:left"><center>기업 회원가입</center></font></b>
        <br><br><br>
        
        <form>
            <table>
                <tr>
                    <td id="title"><center>대표명</center></td>
                    <td>
                        <input type="text" name="enter_name" maxlength="20">               
                    </td>
                </tr>
                        
                <tr>
                    <td id="title"><center>사업자 등록번호</center></td>
                    <td>
                        <input style="width:60px; text-align:center;" type="text" name="enter_num_1" maxlength="3" placeholder="청(서)(3)">&nbsp;-&nbsp;
                        <input style="width:90px; text-align:center;" type="text" name="enter_num_2" maxlength="2" placeholder="개인(법인)(2)">&nbsp;-&nbsp;
                        <input style="width:90px; text-align:center;" type="text" name="enter_num_3" maxlength="4" placeholder="일련번호(4)">
                        <input style="width:50px; text-align:center;" type="text" name="enter_num_4" maxlength="1" placeholder="검증(1)">
                    </td>
                </tr>
                
                <tr>
                    <td id="title"><center>사업장 전화번호</center></td>
                    <td>
                        <input style="width:90px; text-align:center;" type="text" name="phone_1" placeholder="앞 2~3자리"/>&nbsp;-&nbsp;
                        <input style="width:100px; text-align:center;" type="text" name="phone_2" placeholder="중간 3~4자리"/>&nbsp;-&nbsp;
                        <input style="width:105px; text-align:center;" type="text" name="phone_3" placeholder="뒤 4자리"/>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>사업장 주소(도로명까지)</center></td>
                    <td>
                        <input style="width:100%" type="text" name="name" maxlength="100">
                    </td>
                </tr>
                <tr>
                    <td id="title"><center>상세주소</center></td>
                    <td>
                        <input style="width:100%" type="text" name="name" maxlength="100">
                    </td>
                </tr>                
            </table>
            <br><br>
            <input style="float:left" type="submit" value="회원가입" onclick="location.href='login.jsp'">
            <br>
    </div>
    </form>
</body>
</html>


