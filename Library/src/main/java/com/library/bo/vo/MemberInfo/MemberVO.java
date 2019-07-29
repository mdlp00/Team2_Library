package com.library.bo.vo.MemberInfo;

import java.util.Date;

public class MemberVO {
	private int mno, cnt;
	private String mid, mpw, mname, mtel, maddr, mail, mbirth, mlateTimes;
	private String misshow;
	private Date mjoin;
		
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;		}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public String getMlateTimes() {
		return mlateTimes;
	}
	public void setMlateTimes(String mlateTimes) {
		this.mlateTimes = mlateTimes;
	}
	public Date getMjoin() {
		return mjoin;
	}
	public void setMjoin(Date mjoin) {
		this.mjoin = mjoin;
	}
	public String getMisshow() {
		return misshow;
	}
	public void setMisshow(String misshow) {
		this.misshow = misshow;
	}
}


