package com.accaive.test;

public class Member {
	private String empno;
	private String id;
	private String pw;
	private String nickname;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String empno, String id, String pw, String nickname) {
		super();
		this.empno = empno;
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
	}

	public String getEmpno() {
		return empno;
	}

	public void setEmpno(String empno) {
		this.empno = empno;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
}
