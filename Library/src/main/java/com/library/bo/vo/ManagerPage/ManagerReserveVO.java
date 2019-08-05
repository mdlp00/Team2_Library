package com.library.bo.vo.ManagerPage;

/**
 * 
 * @author	양희준
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		ManagerReserveVO 클래스 제작		작성자 : 양희준
 */

public class ManagerReserveVO {
	private int reserve_no;
	private String m_id;
	private int m_no;
	private String m_name;
	private String b_name;
	private String reserve_date;
	private int b_no;
	private int rent_no;
	private String rent_date;
	private int extend_count;
	private String return_date;
	private int overdue_day;
	
	public int getOverdue_day() {
		return overdue_day;
	}
	public void setOverdue_day(int overdue_day) {
		this.overdue_day = overdue_day;
	}
	public int getRent_no() {
		return rent_no;
	}
	public void setRent_no(int rent_no) {
		this.rent_no = rent_no;
	}
	public String getRent_date() {
		return rent_date;
	}
	public void setRent_date(String rent_date) {
		this.rent_date = rent_date;
	}
	public int getExtend_count() {
		return extend_count;
	}
	public void setExtend_count(int extend_count) {
		this.extend_count = extend_count;
	}
	public String getReturn_date() {
		return return_date;
	}
	public void setReturn_date(String return_date) {
		this.return_date = return_date;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getReserve_no() {
		return reserve_no;
	}
	public void setReserve_no(int reserve_no) {
		this.reserve_no = reserve_no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}
	
	
}
