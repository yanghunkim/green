package com.kim.model;

public class GoogleDTO {
	String ID;
	String FullName;
	String GivenName;
	String familyName;
	String ImageURL;
	String Email;
	String googleEmail;
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	public String getGivenName() {
		return GivenName;
	}
	public void setGivenName(String givenName) {
		GivenName = givenName;
	}
	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	public String getImageURL() {
		return ImageURL;
	}
	public void setImageURL(String imageURL) {
		ImageURL = imageURL;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}	
	public String getGoogleEmail() {
		return googleEmail;
	}
	public void setGoogleEmail(String googleEmail) {
		this.googleEmail = googleEmail;
	}
	
	@Override
	public String toString() {
		return "GoogleDTO [ID=" + ID + ", FullName=" + FullName + ", GivenName=" + GivenName + ", familyName="
				+ familyName + ", ImageURL=" + ImageURL + ", Email=" + Email + ", googleEmail=" + googleEmail + "]";
	}
	
}
