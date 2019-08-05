package com.library.bo.vo.ManagerPage;

/**
 * 
 * @author	안다예
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		ManagerVO 클래스 제작		작성자 : 안다예
 */

public class ManagerVO {
	private int no;
	private String mnid;
	private String mnpw;
	private String name;
	public int getNo() {   
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getMnid() {
		return mnid;
	}
	public void setMnid(String mnid) {
		this.mnid = mnid;
	}
	public String getMnpw() {
		return mnpw;
	}
	public void setMnpw(String mnpw) {
		this.mnpw = mnpw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
