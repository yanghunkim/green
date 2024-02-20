package com.kim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.MemberMapper;
import com.kim.model.GoogleDTO;
import com.kim.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberMapper mm;
	
	// 로그인
	public MemberDTO login(MemberDTO member) {
		return mm.login(member);
	}
	
	// 아이디 찾기(Phone)
	public MemberDTO findIdPhone(MemberDTO member) {
		return mm.findIdPhone(member);
	}
	
	// 아이디 찾기(Email)
	public MemberDTO findIdEmail(MemberDTO member) {
		return mm.findIdEmail(member);
	}
	
	// 비밀번호 찾기/수정
	public int findPw(MemberDTO member) {
		return mm.findPw(member);
	}
	
	// 구글 로그인
	public GoogleDTO googleLogin(GoogleDTO google) {
		return mm.googleLogin(google);
	}
	
	// 구글 회원가입
	public void googleSign(GoogleDTO google) {
		mm.googleSign(google);
	}
}
