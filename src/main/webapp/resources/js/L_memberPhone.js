
// 번호 정규식
let regPhone = /^[0-9]{4,11}$/   ;


function validPhone(){
	let phone = document.getElementById("phone");
	console.log(phone)
	if(regPhone.test(phone.value)){
		//alert("제대로 입력함")
		document.getElementById("lbPhone").innerHTML="휴대폰번호 기입 완료";
		document.getElementById("lbPhone").style.color="#fff";
		next05.disabled = false;
		return true;
	}else{
		//alert("제대로 입력안함")
		document.getElementById("lbPhone").innerHTML="휴대폰번호를 다시 확인해 주세요";
		document.getElementById("lbPhone").style.color="rgba(255, 250, 145, 1)";
		next05.disabled = true;
		return false;
	}
}


		

