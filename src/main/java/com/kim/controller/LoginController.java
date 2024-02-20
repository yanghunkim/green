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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.GoogleDTO;
import com.kim.model.MemberDTO;
import com.kim.model.NaverVo;
import com.kim.service.MemberService;

@Controller

public class LoginController {
	
	@Autowired
    private JavaMailSender mailSender;
	
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="login", method = RequestMethod.GET)
		public String loginPage() {
		return "S_login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
		public String loginSuccess(MemberDTO member, HttpSession session) {
		if(ms.login(member) != null) {
			session.setAttribute("login", ms.login(member));
			return "redirect:/";
		}else {
			return "S_login";
		}	
	}
	
	@RequestMapping(value="logout", method = RequestMethod.POST)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
	@RequestMapping(value="find", method = RequestMethod.GET)
		public String loginFind() {
		return "S_loginFind";
	}
	
	// 휴대폰번호로 아이디 찾기
	@RequestMapping(value="S_findIdPhone", method = RequestMethod.POST)
	public String findIdPhone(MemberDTO member, HttpServletRequest request, HttpSession session) {
	
		//ms.findIdPhone(member);
		MemberDTO userinfo = ms.findIdPhone(member);
		
		if(userinfo != null) {
			request.setAttribute("message", "회원님의 아이디는"+userinfo.getId()+"입니다.");
			
		}else {
			request.setAttribute("message", "일치하는 아이디가 없습니다.");
			
		}
		return "messageP";
	}
	
	// 이메일로 아이디 찾기
	@RequestMapping(value="S_findIdEmail", method = RequestMethod.POST)
	public String findIdEmail(MemberDTO member, HttpServletRequest request, HttpSession session) {
	
		//ms.findIdPhone(member);
		MemberDTO userinfo = ms.findIdEmail(member);
		
		if(userinfo != null) {
			request.setAttribute("message", "회원님의 아이디는"+userinfo.getId()+"입니다.");
			
		}else {
			request.setAttribute("message", "일치하는 아이디가 없습니다.");
			
		}
		return "messageE";
	}
	
	@RequestMapping(value="findPw", method = RequestMethod.GET)
	public String findPwPage() {
		return "S_findPw";
	}
	
	@RequestMapping(value="findPw", method = RequestMethod.POST)
	public String findPw(MemberDTO member) {
		int result = ms.findPw(member);
		if(result==1) {
			return "redirect:/";
		}else {
			return "findPw";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/emailChecking", method = RequestMethod.POST)
	public String emailChecking(String email) {		
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		/* 이메일 보내기 */
        String setFrom = "never2346@naver.com";
        String toMail = email;
        String title = "비밀번호 변경을 위한 본인인증 메일입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요." +
                "<br>" +
                "인증 후 비밀번호 변경이 가능합니다.";
      
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
	
    @RequestMapping(value="google-callback", method = RequestMethod.POST)
    public  @ResponseBody String loginUrlGoogle(GoogleDTO google, HttpServletRequest request, 
    		@RequestParam("ID") String ID, @RequestParam("FullName") String FullName, @RequestParam("FullName") String GivenName, 
    		@RequestParam("familyName") String familyName, @RequestParam("ImageURL") String ImageURL, @RequestParam("Email") String Email){
    	
    	HttpSession session = request.getSession();

/*    	System.out.println(ID);*/
    	session.setAttribute("ID", ID);
    	session.setAttribute("FullName", FullName);
    	session.setAttribute("GivenName", GivenName);
    	session.setAttribute("familyName", familyName);
    	session.setAttribute("ImageURL", ImageURL);
    	session.setAttribute("Email", Email);

    	System.out.println(ID);
    	System.out.println(session.getAttribute("ID"));
    	
    	GoogleDTO googleinfo = ms.googleLogin(google);
    	
	    String result = "no";
	    
/*    	if (session.getAttribute("ID") != null) {*/
    	if(googleinfo != null) {
/*            session.setMaxInactiveInterval(60 * 60);*/
    		System.out.println("로그인 성공");
    		
	        result = "ok";
	        
    	}else {
    		System.out.println("로그인 실패");
  
    	}
	    return result;
	    
    }

	@RequestMapping(value="google", method = RequestMethod.GET)
	public String googlePage() {
		return "S_google";
	}
	
	@RequestMapping(value="googleSign", method = RequestMethod.GET)
	public String googleSignPage() {
		return "S_gooleSign";
	}
	
	
	@RequestMapping(value="googleSign", method = RequestMethod.POST)
	public String googleSign(GoogleDTO google, HttpServletRequest request) {
		String ID = request.getParameter("ID");
		String googleEmail = request.getParameter("googleEmail");
		HttpSession session = request.getSession();
		System.out.println(googleEmail);
    	System.out.println(ID);
    	/*session.setAttribute("googleEmail", ID);*/
    	
		ms.googleSign(google);
    
		GoogleDTO googleinfo = ms.googleLogin(google);
		System.out.println(googleinfo);
		if(googleinfo != null) {
			session.setAttribute("login", googleinfo);
			return "redirect:/";	
		} else {
			return "redirect:/google";
		}
	}
	
	
}