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