// 입력 이름

console.log(name)
// 이름 정규식
let regName = /^.{1,20}$/   ;



//입력 이름

function validName(){
	let name = document.getElementById("name");
	if(regName.test(name.value)){
		//alert("제대로 입력함")
		document.getElementById("lbName").innerHTML="이름 확인";
		document.getElementById("lbName").style.color="#fff";
		
		return true;
	}else{
		//alert("제대로 입력안함")
		document.getElementById("lbName").innerHTML="이름을 입력해주세요";
		document.getElementById("lbName").style.color="rgba(255, 250, 145, 1)";
		/*next.disabled = true;*/
		return false;
	}
}



// 생년 월일 

//'출생 연도' 셀렉트 박스 option 목록 동적 생성
$(document).ready(function() { 
const birthYearEl = document.querySelector('#birth-year')
birthYearEl.addEventListener('focus', function () {
	
	// option 목록 생성 여부 확인
	isYearOptionExisted = false;
  // year 목록 생성되지 않았을 때 (최초 클릭 시)
  if(!isYearOptionExisted) {
    isYearOptionExisted = true
    for(var i = 1940; i <= 2023; i++) {
      // option element 생성
      const YearOption = document.createElement('option')
      YearOption.setAttribute('value', i)
      YearOption.innerText = i
      // birthYearEl의 자식 요소로 추가
      this.appendChild(YearOption);
    }
  }
});

// 월
const birthMonthEl = document.querySelector('#birth-month')
birthMonthEl.addEventListener('focus', function () {
	
	//option 목록 생성 여부 확인
	isMonthOptionExisted = false;
// year 목록 생성되지 않았을 때 (최초 클릭 시)
if(!isMonthOptionExisted) {
	isMonthOptionExisted = true
 for(var i = 1; i <= 12; i++) {
   // option element 생성
   const MonthOption = document.createElement('option')
   MonthOption.setAttribute('value', i)
   MonthOption.innerText = i
   // birthYearEl의 자식 요소로 추가
   this.appendChild(MonthOption);
 }
}
});

//일
const birthDayEl = document.querySelector('#birth-day')
birthDayEl.addEventListener('focus', function () {
	
	//option 목록 생성 여부 확인
	isDayOptionExisted = false;
//year 목록 생성되지 않았을 때 (최초 클릭 시)
if(!isDayOptionExisted) {
	isDayOptionExisted = true
for(var i = 1; i <= 31; i++) {
 // option element 생성
 const DayOption = document.createElement('option')
 DayOption.setAttribute('value', i)
 DayOption.innerText = i
 // birthYearEl의 자식 요소로 추가
 this.appendChild(DayOption);
}
}
});


});
//성별

function etc(){
	let gender = document.getElementsByName("gender");

	let isChecked = false;
	for(let i = 0 ; i<gender.length; i++){
		if(gender[i].checked){
			document.getElementById("lbGender").innerHTML="재대로 입력함.";
			document.getElementById("lbGender").style.color="#fff";
			isChecked = true;
			break;
			
		}else{
			document.getElementById("lbGender").innerHTML="남성/여성 중 하나를 선택하세요.";
			document.getElementById("lbGender").style.color="rgba(255, 250, 145, 1)";
			isChecked = false;
			
			/*return false;*/
		}
	}//for 문 끝
	const birthYearEl = document.querySelector('#birth-year');
	const birthMonthEl = document.querySelector('#birth-month');
	const birthDayEl = document.querySelector('#birth-day');
	let yv=birthYearEl.value;
	let mv=birthMonthEl.value;
	let dv=birthDayEl.value;
	if(yv!="출생 연도"&&mv!="월"&&dv!="일"){
		document.getElementById("lbBir").innerHTML="재대로 입력함.";
		document.getElementById("lbBir").style.color="#fff";
	}else{
		document.getElementById("lbBir").innerHTML="생년월일을 선택하세요.";
		document.getElementById("lbBir").style.color="rgba(255, 250, 145, 1)";
	}
	
	//다음 보이게하기
	const final = document.getElementById('final');
	if(isChecked&&validName()&&yv!="출생 연도"&&mv!="월"&&dv!="일"){
		final.disabled = false;
	}else{
		final.disabled = true;
	}
	
	return isChecked
	if(isChecked==true){
		return true;
	}

}

function etc2(){
	let gender = document.getElementsByName("gender");
	let isChecked = false;
	for(let i = 0 ; i<gender.length; i++){
		if(gender[i].checked){
			document.getElementById("lbGender").innerHTML="재대로 입력함.";
			document.getElementById("lbGender").style.color="#fff";
			isChecked = true;
			break;
			
		}else{
			document.getElementById("lbGender").innerHTML="남성/여성 중 하나를 선택하세요.";
			document.getElementById("lbGender").style.color="rgba(255, 250, 145, 1)";
			isChecked = false;
			
			/*return false;*/
		}
	}//for 문 끝
	const birthYearEl = document.querySelector('#birth-year');
	const birthMonthEl = document.querySelector('#birth-month');
	const birthDayEl = document.querySelector('#birth-day');
	let yv=birthYearEl.value;
	let mv=birthMonthEl.value;
	let dv=birthDayEl.value;
	if(yv!="출생 연도"&&mv!="월"&&dv!="일"){
		document.getElementById("lbBir").innerHTML="재대로 입력함.";
		document.getElementById("lbBir").style.color="#fff";
	}else{
		document.getElementById("lbBir").innerHTML="생년월일을 선택하세요.";
		document.getElementById("lbBir").style.color="rgba(255, 250, 145, 1)";
	}
	
	//다음 보이게하기
	const next = document.getElementById('next');
	if(isChecked&&validName()&&yv!="출생 연도"&&mv!="월"&&dv!="일"){
		final.disabled = false;
	}else{
		final.disabled = true;
	}
	
	return isChecked
	if(isChecked==true){
		return true;
	}

}





