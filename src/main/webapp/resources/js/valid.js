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

function jjalUpload() {
	let file = document.jjalForm.img ;
	let tag = document.jjalForm.tag ;
	let explanation = document.jjalForm.explanation ;
	
	if(!file.value){
		alert("파일을 추가해주세요.");
		
		return false;
	}
	
	if(!tag.value){
		alert("태그를 입력해주세요");
		tag.focus();
		tag.value="";
		
		return false;
	}
	
	if(!explanation.value){
		alert("설명을 입력해주세요");
		explanation.focus();
		explanation.value="";
		
		return false;
	}
	return true;
}

function reg() {
	let id = document.regForm.id;
	let pw = document.regForm.pw;
	let nick = document.regForm.nickname;
	
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
	
	if(!nick.value){
		alert("닉네임을 입력해주세요");
		nick.focus();
		nick.value="";
		
		return false;
	}
	
	return true;
}