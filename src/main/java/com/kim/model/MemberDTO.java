package com.kim.model;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String pphone;
	private String birth;
	private String gender;	
	private String email;
	
	public String getId() {
		System.out.println("dto get id="+id);
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		System.out.println("dto get pw="+pw);
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		System.out.println("dto get name="+name);
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		System.out.println("dto get phone="+phone);
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPphone() {
		System.out.println("dto ge pphonet="+pphone);
		return pphone;
	}
	public void setPphone(String pphone) {
		this.pphone = pphone;
	}
	public String getBirth() {
		System.out.println("dto get birth="+birth);
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		System.out.println("dto get gender="+gender);
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		System.out.println("dto get email="+email);
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", pphone=" + pphone
				+ ", birth=" + birth + ", gender=" + gender + ", email=" + email + "]";
	}
}

