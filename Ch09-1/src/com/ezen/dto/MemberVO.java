package com.ezen.dto;

public class MemberVO {
	private String name;
	private String uerId;
	private String pwd;
	private String email;
	private String phone;
	private int admin;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUerId() {
		return uerId;
	}
	public void setUerId(String uerId) {
		this.uerId = uerId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	//모든 것을 알려줌.
	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", uerId=" + uerId + ", pwd=" + pwd + ", email=" + email + ", phone=" + phone
				+ ", admin=" + admin + "]";
	}
	
	
}
