/**
 * 
 */
function check(){
	if(document.log.id.value== ""){
		alert("아이디 입력해 주세요");
		document.log.id.focus();
		return false;
	}
	else if (document.log.pwd.value== "")
	{
		alert("비밀번호를 입력해 주세요");
		document.log.pwd.focus();
		return false;
	}
	else if(isNaN(document.log.pwd.value))
	{
		alert("비밀번호를 입력해 주세요");
		document.log.pwd.focus();
		return false;
	}
	else{
		return true;
	}
}

function chkPW(){

 var pw = $("#password").val();
 var num = pw.search(/[0-9]/g);
 var eng = pw.search(/[a-z]/ig);
 

 if(pw.length < 8 || pw.length > 20){

  alert("8자리 ~ 20자리 이내로 입력해주세요.");
  return false;
 }else if(pw.search(/\s/) != -1){
  alert("비밀번호는 공백 없이 입력해주세요.");
  return false;
 }else if(num < 0 || eng < 0 ){
  alert("영문,숫자,를 혼합하여 입력해주세요.");
  return false;
 }else {
	console.log("통과"); 
    return true;
 }

}