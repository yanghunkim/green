
// 데이터 넘기기
$(document).ready(function() {
 
    
    
    $("#final").click(function(){
    	
    	let email = $("#email").val();
    	let id = $("#id").val();
    	let pw = $("#pw").val();
    	let phone = $("#phone").val();
    	let pphone = $("#pphone").val();
    	let name = $("#name").val();
    	let gender = $("#gender").val();
    	let year = $("#birth-year").val();
    	let month = $("#birth-month").val();
    	let day = $("#birth-day").val();
    	
    	
    	console.log(email);
    	console.log(id);
    	console.log(pw);
    	console.log(phone);
    	console.log(pphone);
    	console.log(name);
    	console.log(gender);
    	console.log(year);
    	console.log(month);
    	console.log(day);

        $.ajax({
            type:'post', //post 형식으로 controller 에 보내기위함!!
            url:"memberAdd", // 컨트롤러로 가는 mapping 입력
            data: {'email': email, 'id': id, 'pw': pw, 'phone': phone, 'pphone': pphone, 'name': name, 'gender': gender, 'birth':year+"-"+month+"-"+day }, // 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
            dataType : 'json',
            success: function(result){ 
            	if(result == true){ // 만약 성공할  시
            		location.replace("http://localhost:8080/login") 
            	}else if(result == false){ // 만약 실패할시
            		location.replace("http://localhost:8080/member")
            		alert("오류 회원가입에 실패 했습니다.")
                }
                 
         },
           
        });
        
    });
    
});