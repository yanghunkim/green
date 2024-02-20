
// 입력 비번


// pw 정규식
let regPw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,20}$/;

//비밀번호 양식 확인
function validPw(){
	let pw = document.getElementById("pw");
	if(regPw.test(pw.value)){
		//alert("제대로 입력함")
		document.getElementById("lbPw").innerHTML="사용가능한 비밀번호 입니다.";
		document.getElementById("lbPw").style.color="color", "#fff", "display", "block", "padding-bottom:12px", "font-size", "20px";
		
		return true;
	}else{									   
		//alert("제대로 입력안함")
		document.getElementById("lbPw").innerHTML="영문 대/소문자, 숫자, 특수문자 포함 8~20자로 입력해주세요";
		document.getElementById("lbPw").style="color", "rgba(255, 250, 145, 1)", "display", "block", "padding-bottom:12px", "font-size", "20px";
		return false;
	}
}
// 비밀번호 정확도 확인
function validPwc(){
	let pw = document.getElementById("pw");
	let pwc = document.getElementById("pwc");
	if(pw.value!=pwc.value){
		//alert("제대로 입력안함")
		document.getElementById("lbPwc").innerHTML="비밀번호 불일치";
		document.getElementById("lbPwc").style="color", "rgba(255, 250, 145, 1)", "display", "block", "padding-bottom:12px", "font-size", "20px";
		return false;
	}
	else{
		document.getElementById("lbPwc").innerHTML="비밀번호 일치";
		document.getElementById("lbPwc").style="color", "#fff", "display", "block", "padding-bottom:12px", "font-size", "20px";
		return true;
		
	}
}


//비밀번호 보이게 안보이게
function pwe(){
	if(pw.type=="password"){
		pw.type="text";
	}else if(pw.type=="text"){
		pw.type="password";
	}
}
//비밀번호 확인 보이게 안보이게
function pwce(){
	if(pwc.type=="password"){
		pwc.type="text";
	}else if(pwc.type=="text"){
		pwc.type="password";
	}
}
// 다음 버튼
function pf(){
	const next04 = document.getElementById('next04');
	if(validPw()&&validPwc()){
		next04.disabled = false;	
	}else{
		next04.disabled = true;	
	}
}	
function pf2(){
	const next04 = document.getElementById('next04');
	if(validPw()&&validPwc()){
		next04.disabled = false;	
	}else{
		next04.disabled = true;	
	}
}	




