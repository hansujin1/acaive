function logincheckCall() {
	let id = document.loginForm.id;
	let pw = document.loginForm.pw;
	
	if(!id.value){
		alert("아이디를 입력해주세요");
		id.focus();
		id.value="";
		
		return false;
	}
	
	if(!pw.value){
		alert("비밀번호를 입력해주세요");
		pw.focus();
		pw.value="";
		
		return false;
	}
	
	return true;
}