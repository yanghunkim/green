
	// 로그인
	let id = document.getElementById("id")
	let pw = document.getElementById("pw")	
	let openPw = document.getElementById("openPw")
	
	// 아이디 
	let regId = /^[A-Za-z0-9]{6,12}$/;
	// 비밀번호
	let regPw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
	
	function formValidLogin(){
		if(id.value.length==0){
			alert("아이디를 입력하세요")
			return false;
		// 데이터베이스에 아이디가 존재하지 않으면 혹은 아이디 형식에 맞지 않으면
		}if(!regId.test(id.value)){
			alert("아이디가 존재하지 않습니다")
			id.focus();
			return false;
		}else{
			
		}if(pw.value.length==0){
			alert("비밀번호를 입력하세요.")
			return false;
		// 데이터베이스에 존재하는 아이디의 비밀번호와 일치하지 않을 때
		}if(!regPw.test(pw.value)){
			alert("비밀번호가 일치하지 않습니다")
			pw.focus();
			return false;
		}if(!openPw.test(pw.value)){
			alert("비밀번호가 일치하지 않습니다")
			pw.focus();
			return false;	
		}else{
			
		}
	}
	
	function checkPw(){
		if(openPw.checked == true){
			pw.setAttribute('type','text');
		}else{
			pw.setAttribute('type','password');
		}
	}