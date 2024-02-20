
// 입력 비번
let pw = document.getElementById("pw");
let pwc = document.getElementById("pwc");
console.log(pw.type)
// pw 정규식
let regPw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,20}$/;

//비밀번호 양식 확인
function validPw(){
	if(regPw.test(pw.value)){
		//alert("제대로 입력함")
		document.getElementById("lbPw").innerHTML="사용가능한 비밀번호 입니다.";
		document.getElementById("lbPw").style.color="green";
		
		return true;
	}else{
		//alert("제대로 입력안함")
		document.getElementById("lbPw").innerHTML="영문 대/소문자, 숫자, 특수문자 포함 8~20자로 입력해주세요";
		document.getElementById("lbPw").style.color="red";
		return false;
	}
}
// 비밀번호 정확도 확인
function validPwc(){
	if(pw.value!=pwc.value){
		//alert("제대로 입력안함")
		document.getElementById("lbPwc").innerHTML="비밀번호 불일치";
		document.getElementById("lbPwc").style.color="red";
		return false;
	}
	else{
		document.getElementById("lbPwc").innerHTML="비밀번호 일치";
		document.getElementById("lbPwc").style.color="green";
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

//다음 버튼
function pf(){
	const modify = document.getElementById('modify');
	const remove = document.getElementById('remove');
	if(validPw()&&validPwc()){
		modify.disabled = false;	
		remove.disabled = false;	
	}else{
		modify.disabled = true;	
		remove.disabled = true;	
	}
}	
function pf2(){
	const modify = document.getElementById('modify');
	const remove = document.getElementById('remove');
	if(validPw()&&validPwc()){
		modify.disabled = false;	
		remove.disabled = false;	
	}else{
		modify.disabled = true;	
		remove.disabled = true;	
	}
}	
