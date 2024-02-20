/*// 다음버튼
const next01 = document.getElementById('next01');*/

//모두동의 (취소는 더 개발해야함)

function allcheck(){
	const checkboxes = document.querySelectorAll('.chk');
	const ch1 = document.getElementById('ch1');
	const ch2 = document.getElementById('ch2');
	const ch3 = document.getElementById('ch3');
	const ch1ch = ch1.checked;
	const ch2ch = ch2.checked;
	const ch3ch = ch3.checked;
	if(ch1ch&&ch2ch&&ch3ch){
		next01.disabled = true;
		for(const checkbox of checkboxes){
	        checkbox.checked = false;
	       
		}
	}else{
		next01.disabled = false;
		for(const checkbox of checkboxes){
	        checkbox.checked = true;
	        
		}
	}
}

$('#all').on('click',function(){
	$('#bluecircle').addClass('on');
})
$('#bluecircle').on('click',function(){
	$('#bluecircle').removeClass('on');
})

function check(){
	const checkboxes = document.querySelectorAll('.chk');
	const ch1=document.getElementById("ch1");
	const ch2=document.getElementById("ch2")
	const ch1ch = ch1.checked;
	const ch2ch = ch2.checked;
	if(ch1ch&&ch2ch){
		next01.disabled = false;
	}else{
		next01.disabled = true;
	}
}


