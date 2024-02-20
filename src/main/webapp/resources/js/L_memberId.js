

 
// id 정규식
let regId = /^[A-Za-z0-9]{8,20}$/;

//입력 아이디

function validId(){
	let id = document.getElementById("id");
	if(regId.test(id.value)){
		//alert("제대로 입력함")
		console.log(id.value);
		return true;
	}else{
		//alert("제대로 입력안함")
	
		return false;
	}
}


//중복 체크

$(document).ready(function() {
    
    $("#checkId").click(function(){
    
        let id = $("#id").val();
        
        if(id == '' || id.length == 0) {
			$("#label1").css("color", "rgba(255, 250, 145, 1)").text("공백은 ID로 사용할 수 없습니다.");
			return false;
		}
        console.log(id);
        $.ajax({
            type:'post', //post 형식으로 controller 에 보내기위함!!
            url:"memberIdCheck", // 컨트롤러로 가는 mapping 입력
            data: {"id": id}, // 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
            dataType : 'json',
            success: function(result){ 
                if(result == true){ // 만약 성공할시
                	if(validId()){
                		 message = "사용 가능한 아이디입니다.";
                		 next03.disabled = false;
                         $("#lbId").html(message).css("color","#fff", "position","relative", "top","30px");
                         $("#id").trigger("focus");
                	}else{
                		message = "8~20자의 영문 대/소문자, 숫자를 사용해 주세요.";
                		$("#lbId").html(message).css("color","rgba(255, 250, 145, 1)", "position","relative", "top","50px");
                        $("#id").trigger("focus");
                	}
                   
                 
             }else{ // 만약 실패할시
            	 next03.disabled = true;
            	 
            	 if(validId()){
            		 console.log(next.value);
            		 message="이미 사용중인 아이디입니다.";
                     $("#lbId").html(message).css("color","rgba(255, 250, 145, 1)", "position","relative", "top","3px" );
                     $("#id").trigger("focus");
            	}else{
            		message = "8~20자의 영문 대/소문자, 숫자를 사용해 주세요.";
            		$("#lbId").html(message).css("color","rgba(255, 250, 145, 1)", "position","relative", "top","50px" );
                    $("#id").trigger("focus");
            	}
            	
             }
                 
         },
           
        });
        
    });
    
});

/*// 중복 확인 눌렀을때
function dup(){
	// 정규식 통과 + 아이디 중복 체크(DB 할때)
	if(validId()){
		document.getElementById("lbId").innerHTML="사용가능한 아이디 입니다.";
		document.getElementById("lbId").style.color="green";
		next.disabled = false;
		console.log(next);
		return true;
	}
	else{
		document.getElementById("lbId").innerHTML="8~20자의 영문 대/소문자, 숫자를 사용해 주세요.";
		document.getElementById("lbId").style.color="red";
		next.disabled = true;
		return false
	}
	
}
*/
