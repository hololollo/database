package org.ganreung.dto;

public class Member {
	private String id;
	private String pw;
	private String pwRemark;
	private String name;
	private String tel;
	private String email;
	private String bdate;
	private String gender;
	public Member() {}
	public Member(String id, String pw, String pwRemark, String name, String tel, String email, String bdate,
			String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.pwRemark = pwRemark;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.bdate = bdate;
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPwRemark() {
		return pwRemark;
	}
	public void setPwRemark(String pwRemark) {
		this.pwRemark = pwRemark;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", pwRemark=" + pwRemark + ", name=" + name + ", tel=" + tel
				+ ", email=" + email + ", bdate=" + bdate + ", gender=" + gender + "]";
	}
	
	
}
