// 이메일 인증 후 비밀번호 변경

// 변수
let pw = document.getElementById("pw");
let checkPw = document.getElementById("checkPw");
let checkPwLbl = document.getElementById("checkPwLbl");
let openPw = document.getElementById("openPw");

// 비밀번호 정규식
let regPw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,20}$/;

//비밀번호 표시
function visiblePw(){
	if(openPw.checked == true){
		pw.setAttribute('type','text');
	}else{
		pw.setAttribute('type','password');
	}
}


//다음 버튼
const next = document.getElementById('next');
console.log(next);

$(document).ready(function() { 
 	
 	var email_auth_cd = '';
 
	$('#okay').click(function(){
		
		if($('#check').val() != email_auth_cd){
			message = "인증번호가 일치하지 않습니다.";
    		$("#lbEmail").html(message).css("color", "green");
            $("#email").trigger("focus");
            next.disabled = true;
			return false;
		}else{
			message = "인증되었습니다."
			$("#lbEmail").html(message).css("color", "green");
	        $("#next").trigger("focus");
	        next.disabled = false;
		}
		
	});
	
	$("#emailSend").click(function(){	     	 
    	 var email = $('#email').val();
    	 var id = $('#id').val();
    	 
    	 if(id == ''){
    		alert("이메일을 입력해주세요.");
    		return false;
		}if(email == ''){
			alert("이메일을 입력해주세요.");
			return false;
	 }
    	 
    	 $.ajax({
			type : "POST",
			url : "/emailChecking",
			data : {email : email},
			success: function(data){
				alert("인증번호가 발송되었습니다.");
				email_auth_cd = data;
			},
			error: function(data){
				alert("메일 발송에 실패했습니다.");
			}
		}); 
    	 
    	 
	});

 });

// 비밀번호 변경
function formClick(){
	if(pw.value.length == 0 || checkPw.value.length == 0){
		alert("비밀번호를 입력해주세요.");
		pw.focus();
		return false;
	}if (!regPw.test(pw.value)) {
		alert("영문 대/소문자, 숫자, 특수문자 포함 8~20자로 입력해주세요.");
		pw.focus();
		return false;
	}if(pw.value != checkPw.value){
		checkPwLbl.innerHTML = "비밀번호가 일치하지 않습니다.";
		document.getElementById("checkPwLbl").style.color="red";
		checkPw.focus();
		return false;
	} else{
		alert("비밀번호가 변경되었습니다.");
	}
}
