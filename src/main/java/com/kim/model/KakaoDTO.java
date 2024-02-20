package com.kim.model;

public class KakaoDTO {
	String k_id;
	String k_nickname;
	String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getK_id() {
		return k_id;
	}
	public void setK_id(String k_id) {
		this.k_id = k_id;
	}
	public String getK_nickname() {
		return k_nickname;
	}
	public void setK_nickname(String k_nickname) {
		this.k_nickname = k_nickname;
	}
	@Override
	public String toString() {
		return "KakaoDTO [k_id=" + k_id + ", k_nickname=" + k_nickname + ", email=" + email + "]";
	}

}
