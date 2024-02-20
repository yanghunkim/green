<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- 하이용  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : 회원가입</title>
<link rel="stylesheet" href="/resources/css/K_member.css"/>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<!-- L_memberTerms 있던 script 입니다. -->
<script src="/resources/js/L_memberTerms.js"></script>
<!-- L_memberEmail 있던 script 입니다. -->
<script src="/resources/js/L_memberEmail.js"></script>
<!-- L_memberId 있던 script 입니다.  -->
<script src="/resources/js/L_memberId.js"></script>
<!-- L_memberPassword 있던 script 입니다. -->
<script src="/resources/js/L_memberPassword.js"></script>
<!-- L_memberPhone 있던 script 입니다. -->
<script src="/resources/js/L_memberPhone.js"></script>
<!-- L_MemberEtc 있던 script 입니다. -->
<script src="/resources/js/L_MemberEtc.js"></script>

<script src="/resources/js/L_member.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$('#next01').on("click",function(){
	$("#sectioncontainer01").addClass("on");
	$("#sectioncontainer02").addClass("on");
});

//세션 2가 사라지고 세션 3이 와야된다. 버튼을 눌렀을때

$('#next02').on("click",function(){
	$("#sectioncontainer02").removeClass("on");
	$("#sectioncontainer03").addClass("on");
});

//세션 3이 사라지고 세션 4이 와야된다. 버튼을 눌렀을때

$('#next03').on("click",function(){
	$("#sectioncontainer03").removeClass("on");
	$("#sectioncontainer04").addClass("on");
});

//세션 4이 사라지고 세션 5이 와야된다. 버튼을 눌렀을때	

$('#next04').on("click",function(){
	$("#sectioncontainer04").removeClass("on");
	$("#sectioncontainer05").addClass("on");
});

//// 세션 5이 사라지고 세션6이 와야된다. 버튼을 눌렀을때	

$('#next05').on("click",function(){
	$("#sectioncontainer05").removeClass("on");
	$("#sectioncontainer06").addClass("on");
});
});	
</script>

<body>

	<jsp:include page="K_Include/herder.jsp"></jsp:include>

	<!--                                          회원가입 페이지 입니다.                                          -->
<form action="member12" method="post">
	<div id="sectioncontainer01" class="containerbox">
		<div id="start01">
			<h2>그린드림병원 회원가입을 시작합니다!</h2>
		</div>
		<div id="please01">
			<h3>이용약관에 동의해 주세요.</h3>
		</div>


		<div id="contaninerCheckbox01">
			<div id="contanierClickbtnbox01">
				<input type="button" id="all" name="all" value=""
					onclick="allcheck()">
				<h4>모두동의</h4>
				<span id="bluecircle" style="width: 13px; height: 13px;"></span>
			</div>
			<div id="checkboxscroll">

				<span id="check1"> <input type="checkbox" id="ch1" name="ch1"
					class="chk"> 그린드림병원 서비스 이용약관 동의(필수) <label>여러분을
						환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의
						이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하
						‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를
						포함하고 있습니다. 네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영
						정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다. 다양한 네이버 서비스를
						즐겨보세요. 네이버는 www.naver.com을 비롯한 네이버 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을
						통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는
						다양한 서비스를 제공하고 있습니다. 여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의
						네이버 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, 네이버
						웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다. </label>
				</span> <span id="check2"> <input type="checkbox" id="ch2"
					name="ch2" class="chk"> 그린드림병원 개인정보 수집 및 이용 동의(필수) <label>개인정보보호법에
						따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및
						이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
						1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과
						동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기
						위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다. 회원가입 시점에 네이버가
						이용자로부터 수집하는 개인정보는 아래와 같습니다. - 회원 가입 시 필수항목으로 아이디, 비밀번호, 이름, 생년월일,
						성별, 휴대전화번호를, 선택항목으로 본인확인 이메일주소를 수집합니다. 실명 인증된 아이디로 가입 시, 암호화된 동일인
						식별정보(CI), 중복가입 확인정보(DI), 내외국인 정보를 함께 수집합니다. 만14세 미만 아동의 경우, 법정대리인
						정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. - 비밀번호
						없이 회원 가입 시에는 필수항목으로 아이디, 이름, 생년월일, 휴대전화번호를, 선택항목으로 비밀번호를 수집합니다. </label>
				</span> <span id="check3"> <input type="checkbox" id="ch3"
					name="ch3" class="chk"> 광고성 정보 수신(선택) <label>실명
						인증된 아이디로 가입하시면 본인인증이 필요한 서비스(네이버 페이, 쇼핑, 멤버십 등)를 가입 후 바로 이용하실 수
						있어요. </label>
				</span>

			</div>
			<div id="contanierClickbtnbox02">
				<input type="button" name="next01" id="next01" disabled='disabled'
					value="다음">
			</div>
		</div>

	</div>


	<!--                                          email 세션입니다.                                            -->

	<div id="sectioncontainer02" class="containerbox">
		<div id="start02">
			<h2>이메일 인증</h2>
		</div>
		<div id="please02">
			<h3>사용하시는 이메일을 입력해주세요.</h3>
		</div>
		<div id="contanierClickbtnbox02">
			<div class="email_auth">
				<h4>이메일 : </h4>
				<input type="text"
					placeholder="이메일형식으로 입력해주세요(ex: hong1234@gmail.com)" 
					name="email" id="email" class="email">
					<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호	받기</button>
				<label id="lbEmail"></label>
			</div>
			<div>
				<h4 style="position: relative; left: -10.1%;">이메일 인증 : </h4>
				<input type="text" placeholder="인증번호 입력" id="email_auth_key">
				<input type="button" id="check" value="번호 확인"> 
				<input type="button" name="next02" id="next02" disabled='disabled' value="다음" style="text-align: center; text-indent: 0;" >
			</div>
		</div>
	</div>

	<!--                                          아이디 페이지입니다.                                            -->
+
	<div id="sectioncontainer03" class="containerbox">
		<div id="te">
			<div id="ti">
				<h2>꿈을그린병원 아이디를 만들어주세요</h2>
			</div>
			<div id="please03">
				<h3>사용할 아이디를 입력해주세요.</h3>
			</div>
			<div id="contanierClickbtnbox03">
				<div>
					<div id="i">아이디 : </div>
					<input type="text" name="id" id="id" maxlength="20" placeholder="영문소대문자,숫자조합 (8~20자)" maxlength="20" onblur="validId()">
					<input type="button" name="checkId" id="checkId" value="중복확인"> 
					<input type="button" name="next03" id="next03" disabled='disabled' value="다음">
					<!-- </form> -->
					<label id="lbId"></label>
				</div>
			</div>
		</div>
	</div>

	<!--                                        비밀번호 입력 페이지입니다.                                            -->


	<div id="sectioncontainer04" class="containerbox">

		<div id="me" onmousemove="pf()" onkeydown="pf2()">

			<div id="ti">
				<h2>비밀번호를 만들어주세요.</h2>
				<h3>문자, 숫자, 기호를 조합하여 안전한 비밀번호를 만드세요.</h3>
			</div>
			<div id="p">
				<div id="pws">
					<h4>비밀번호 : </h4>
						<input type="password" name="pw" id="pw"
							placeholder="영문,숫자,특수문자 조합(8~20자)" maxlength="20"
							onKeyUp="validPw()">
							<input type="checkbox" class="changebox" value="표시/숨김" onclick="pwe()">
				</div>
				<label id="lbPw"></label>
			</div>
			<div id="kp">
				<h4>비밀번호 확인 : </h4>
				<input type="password" name="pwc" id="pwc" placeholder="비밀번호 재입력"
					maxlength="20" onKeyUp="validPwc()"> <input type="checkbox"
					id="change" class="changebox" value="표시/숨김" onclick="pwce()">
			</div>
					<label id="lbPwc" onblur="ext()"></label>
			<input type="button" name="next04" id="next04" disabled='disabled' value="다음">

		</div>

	</div>

	<!--                                         휴대폰 페이지입니다.                                                -->

	<div id="sectioncontainer05" class="containerbox">
		<div id="start03">
			<h2>본인의 휴대전화 번호를 작성해주세요.</h2>
			<h3>보호자연락처을 작성해주세요.</h3>
		</div>
		<div id="contanierClickbtnbox05">

			<div class="phonetext01">
				<h4>휴대폰 (필수)</h4>
				<input type="text" name="phone" id="phone"
					placeholder="11자 이내로 작성 가능" maxlength="11" onKeyUp="validPhone()">
				<label id="lbPhone"></label>
			</div>

			<div class="phonetext02">
				<h4>보호자번호 (선택)</h4>
				<input type="text" name="pphone" id="pphone"
					placeholder="11자 이내로 작성 가능" maxlength="11">
			</div>
				<label id="lbPPhone"></label> 
				<input type="button" name="next05" id="next05" disabled='disabled' value="다음">
		</div>
	</div>

	<!--                                           개인정보 입력 페이지 입니다.								  -->

	<div id="sectioncontainer06">
		<div id="contanierClickbtnbox06">
			<div>
				<h3>개인정보를 입력해주세요</h3>
			</div>
			<br>
			<div onmousemove="etc()" onkeydown="etc2()" id="section06-box">

				<div>
					<h4 class="h4box01">이름 : </h4>
				</div>
					<input type="text" name="name" id="name"
						placeholder="20자 이내로 입력 가능합니다." maxlength="20"
						onKeyUp="validName()">
					<label id="lbName" style="display: block;"></label>

				<div class="info" id="info__birth">
					<h4 class="h4box02">생년월일 : </h4>
					<select class="box" name="year" id="birth-year">
						<option disabled selected>출생 연도</option>
					</select> <select class="box" name="month" id="birth-month">
						<option disabled selected>월</option>
					</select> <select class="box" name="day" id="birth-day">
						<option disabled selected>일</option>
					</select>
					<label id="lbBir" style="display: block;"></label>
				</div>
				<div>
					<h4 class="h4box03">성별</h4>
				</div>
				<div id="boxgender">
					<label><input type="radio" name="gender" id="male" class="Finally" value="남">남자</label> 
					<label><input type="radio"
						name="gender" id="female" class="Finally" value="여">여자</label>
					<label><input type="radio" name="gender" id="nogender" class="Finally" value="중">선택안함</label>
					<label id="lbGender" style="display: block;"></label> 
				</div>

				<input type="submit" name="final"
					id="final" disabled='disabled' value="가입완료" >
			</div>
		</div>
	</div>
</form>
</body>

<script src="/resources/js/L_memberTerms.js"></script>
	<jsp:include page="K_Include/footer.jsp"></jsp:include>
</html>