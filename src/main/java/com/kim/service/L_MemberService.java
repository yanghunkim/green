package com.kim.service;

import com.kim.model.KakaoDTO;
import com.kim.model.MemberDTO;
import com.kim.model.NaverVo;

public interface L_MemberService {
	//회원가입
	public void memberAdd(MemberDTO member);
	
	//중복 Id 검색
	public boolean selectId(String id); 
	
	// naver 회원가입 여부 체크
	
	
	// naver 회원가입
	public void naverAdd(NaverVo naver);
	
	// naver 회원가입 여부 체크
	public NaverVo naverCheck(NaverVo naver);
	
	// kakao 회원가입
	public void kakaoAdd(KakaoDTO kakao);
	
	// kakao 회원가입 여부 체크
	public KakaoDTO kakaoCheck(KakaoDTO kakao);
	
	// 회원정보 상세
	public MemberDTO detail(MemberDTO member);
		
	// 회원정보 수정
	public void modify(MemberDTO member);
	
	// 회원정보 삭제
	public void remove(MemberDTO member);
}
