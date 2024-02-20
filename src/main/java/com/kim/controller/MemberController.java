package com.kim.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kim.model.KakaoDTO;
import com.kim.model.MemberDTO;
import com.kim.model.NaverVo;
import com.kim.service.L_MemberService;



@Controller
/*@RequiredArgsConstructor*/
public class MemberController {
	
	@Autowired
    private JavaMailSender mailSender;
	
	@Autowired
	L_MemberService ls;
	
/*	@GetMapping("t1")
	public String t12() {
		return  "test";
	}
	@PostMapping("test")
	@ResponseBody
	public ResponseEntity<Boolean> test(String name, String gender, String birth) {
		boolean	result = true;
		System.out.println(name);
		System.out.println(gender);
		System.out.println(birth);
		if(birth !=null) {
			result = true;
		}else {
			result = true;
		}
		return new ResponseEntity<>(result, HttpStatus.OK);
		
	}*/
	
	@GetMapping("member")
	public String m1() {
		return  "K_member";
	}
	
	@PostMapping("member12")
	public String m12() {
		return  "K_member";
	}
	@ResponseBody
	@PostMapping("memberAdd")
	public String mea(MemberDTO member, String email, String id, String pw, String phone, String pphone
			, String name, String gender, String birth) {
		
		
		String result = "ok";
		 
		/*    ls.naverAdd(naver);*/
		ls.memberAdd(member);
		
		System.out.println(id);
	    if(id != null) {
	
	        result = "no";
	    }
	    
	    return result;
		
	}
	@PostMapping("memberEmail")
	public String mee() {
		return "L_member/L_memberEmail";
	}
	
	@PostMapping("memberId")
	public String mi(HttpServletRequest request) {
		String memail = request.getParameter("email");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("email", memail);
		return  "L_member/L_memberId";
	}
	
	@PostMapping("memberIdCheck")
	@ResponseBody
	public ResponseEntity<Boolean> confirmId(String id) {
		boolean result = true;
		
		if(id.trim().isEmpty()) {
			result = false;
		} else {
			if (ls.selectId(id)) {
				result = false;
			} else {
				result = true;
			}
		}
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
/*	@PostMapping("memberPassword")
	public String mp(HttpServletRequest request) {
		String mid = request.getParameter("id");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("id", mid);
		
		return "L_member/L_memberPassword";
	}
	@PostMapping("memberPhone")
	public String mpo(HttpServletRequest request) {
		String mname = request.getParameter("name");
		String mgender = request.getParameter("gender");
		String myear = request.getParameter("year");
		String mmonth = request.getParameter("month");
		String mday = request.getParameter("day");
		
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("name", mname);
		session.setAttribute("gender", mgender);
		session.setAttribute("year", myear);
		session.setAttribute("month", mmonth);
		session.setAttribute("day", mday);
		
		String year = (String)session.getAttribute("year");
		String month = (String)session.getAttribute("month");
		String day = (String)session.getAttribute("day");
	
		System.out.println(year);
		System.out.println(month);
		System.out.println(day);
		
		return "L_member/L_memberPhone";
	}
	
	@PostMapping("memberEtc")
	public String me(HttpServletRequest request) {
		String mpw = request.getParameter("pw");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("pw", mpw);
		
		
		return "L_member/L_memberEtc";
	}
	
	@PostMapping("memberEnd")
	public String md(HttpServletRequest request,MemberDTO member) {
		
		
		String mphone = request.getParameter("phone");
		String mpphone = request.getParameter("pphone");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("phone", mphone);
		session.setAttribute("pphone", mpphone);
		
		ls.memberAdd(member);
		return "L_member/L_memberEnd";
		
		aaaa
	}*/
	@GetMapping("memberNaver")
	public String mn() {

		
		return "L_member/L_naverMember";
	}
	
/*	@PostMapping("memberNaverPhone")
	public String men(HttpServletRequest request) {
		String mid = request.getParameter("id");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("id", mid);
		
		return "L_member/L_memberNaverPhone";
	}*/
	
	@PostMapping("naverLoginEnd")
	public String mne(HttpServletRequest request,NaverVo naver) {

		ls.naverAdd(naver);
		
		return  "redirect:/";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/emailAuth", method = RequestMethod.POST)
	public String emailAuth(String email) {		
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		/* 이메일 보내기 */
        String setFrom = "never2346@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
      
        try {
        	 
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return Integer.toString(checkNum);
        /*이메일 추가*/
	}
	
	@RequestMapping("/naverlogin")
    public String naver() {
        return "L_member/naverlogin";
    }
    
    
    @RequestMapping(value="/callback", method=RequestMethod.GET)
    public String callBack(){
        return "callback";
    }
    
    @RequestMapping(value="naverSave", method=RequestMethod.POST)
    public @ResponseBody String naverSave(NaverVo naver, HttpServletRequest request,
    		@RequestParam("n_birthyear") String n_birthyear, @RequestParam("n_email") String n_email, 
    		@RequestParam("n_gender") String n_gender, @RequestParam("n_name") String n_name, 
    		@RequestParam("n_nickName") String n_nickName, @RequestParam("n_mobile") String n_mobile, 
    		@RequestParam("n_birthday") String n_birthday,
    		@RequestParam("n_id") String n_id ) {
	    	
	HttpSession session = request.getSession();
		session.setAttribute("n_email", n_email);	
		session.setAttribute("n_birthday", n_birthday);	
		session.setAttribute("n_gender", n_gender);	
		session.setAttribute("n_name", n_name);	
		session.setAttribute("n_nickName", n_nickName);	
		session.setAttribute("n_mobile", n_mobile);	
		session.setAttribute("n_birthyear", n_birthyear);	
		session.setAttribute("n_id", n_id);	
    	
	    System.out.println("#############################################");
	    System.out.println(n_email);
	    System.out.println(n_birthday);
	    System.out.println(n_gender);
	    System.out.println(n_name);
	    System.out.println(n_nickName);
	    System.out.println(n_mobile);
	    System.out.println(n_birthyear);
	    System.out.println(n_id);

	    System.out.println("#############################################");
	    /*	 	 	  NaverVo naver = new NaverVo();

   		naver.setBirthday(n_birthday);
	    naver.setEmail(n_gender);
	    naver.setGender(n_name);
	    naver.setId(n_mobile);
	    naver.setName(n_nickName);
	    naver.setNickName(n_email);
	    naver.setNickName(n_birthyear);
	    naver.setNickName(n_age);
	    naver.setNickName(n_id);*/
	    System.out.println("#############################################");



	   
	    String result = "no";
	 
		/*    ls.naverAdd(naver);*/
		    NaverVo userinfo = ls.naverCheck(naver);
	    	
		
	    if(userinfo != null) {
	
	        result = "ok";
	    }
	    
	    return result;

    }
    
    // 카카오 로그인 연결
	@RequestMapping("/kakaologin")
    public String kakao() {
        return "K_kakao";
    }
	// 카카오 회원가입
	@GetMapping("memberKakao")
	 public String kakaom() {
        return "K_kakaoMember";
    }
	// 카카오 회원가입 데이터 터리
	@PostMapping("kakaoLoginEnd")
	public String kko(HttpServletRequest request,KakaoDTO kakao) {

		ls.kakaoAdd(kakao);
		
		return  "redirect:/";
	}
	
	// 카카오 여부
	@ResponseBody
	@PostMapping("kakaoData")
    public String kakaod(KakaoDTO kakao,HttpServletRequest request,String k_id, String k_nickname) {
		System.out.println(k_id);
		System.out.println(k_nickname);
		
		HttpSession session = request.getSession();
		session.setAttribute("k_id", k_id);	
		session.setAttribute("k_nickname", k_nickname);	
		
		String result = "no";
		 
		/*    ls.naverAdd(naver);*/
		KakaoDTO userinfo = ls.kakaoCheck(kakao);
	    	
		
	    if(userinfo != null) {
	
	        result = "ok";
	    }
	    
	    return result;

    }
	// 회원 정보
	@PostMapping("memberdetail")
	 public String mdmd(MemberDTO member, Model model, HttpSession session) {
		System.out.println(member);
		MemberDTO detail = (MemberDTO)session.getAttribute("login");
		model.addAttribute("detail", detail );
		
        return "L_member/L_memberDetail";
    }
	
	// 회원정보 수정
	@PostMapping("modify")
	public String membermodify(MemberDTO member,RedirectAttributes rttr, HttpServletRequest request){
		ls.modify(member);
		rttr.addAttribute("id", member.getId());
		request.setAttribute("message", "회원정보가 수정되었습니다.");
		return "messageS";
	}
	
	// 회원정보 삭제
	@PostMapping("remove")
	public String memberremove(MemberDTO member,HttpServletRequest request){
		ls.remove(member);
		request.setAttribute("message", "회원탈퇴 완료 되었습니다.");
		return "messageR";
	}
}
