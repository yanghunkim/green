// 로그인
	let id = document.getElementById("id")	
	let name = document.getElementById("name")
	let phone = document.getElementById("phone")	
	let email = document.getElementById("email")		
		
	
	function formFindIdPhone(){
		if(name.value.length==0){
			alert("이름을 입력하세요.")
			return false;
		// 데이터베이스에 아이디가 존재하지 않으면 혹은 아이디 형식에 맞지 않으면
		}if(!name.test(name.value)){
			alert("일치하는 회원이 없습니다.")
			id.focus();
			return false;
		}else{
			
		}if(phone.value.length==0){
			alert("휴대폰번호를 입력하세요.")
			return false;
		// 데이터베이스에 존재하는 아이디의 비밀번호와 일치하지 않을 때
		}if(!phone.test(phone.value)){
			alert("일치하는 회원이 없습니다.")
			phone.focus();
			return false;
		}else{
			
		}
	}
	
	function formFindIdEmail(){
		if(name.value.length==0){
			alert("이름을 입력하세요.")
			return false;
		// 데이터베이스에 아이디가 존재하지 않으면 혹은 아이디 형식에 맞지 않으면
		}if(!name.test(name.value)){
			alert("일치하는 회원이 없습니다.")
			name.focus();
			return false;
		}else{
			
		}if(email.value.length==0){
			alert("이메일을 입력하세요.")
			return false;
		// 데이터베이스에 존재하는 아이디의 비밀번호와 일치하지 않을 때
		}if(!email.test(email.value)){
			alert("일치하는 회원이 없습니다.")
			email.focus();
			return false;
		}else{
			
		}
	}