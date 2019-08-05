package com.library.bo.vo;

import com.library.bo.vo.ManagerPage.*;

/**
 * 
 * @author	양희준
 * @since	2019.00.00
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.00.00		ManagerReserveVO 클래스 제작		작성자 : 양희준
 */

public class BookVO {
	private int b_no;
	private int class_no;
	private String b_name;
	private String b_writer;
	private String b_publisher;
	private String b_img;
	private String b_description;
	private String b_price;
	private String b_discount;
	private String b_pubdate;
	private String b_isbn;
	private String class_subject;
	private int m_no;
	private String m_id;
	private String reserve_isshow;

	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getReserve_isshow() {
		return reserve_isshow;
	}
	public void setReserve_isshow(String reserve_isshow) {
		this.reserve_isshow = reserve_isshow;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getClass_subject() {
		return class_subject;
	}
	public void setClass_subject(String class_subject) {
		this.class_subject = class_subject;
	}
	public String getB_price() {
		return b_price;
	}
	public void setB_price(String b_price) {
		this.b_price = b_price;
	}
	public String getB_discount() {
		return b_discount;
	}
	public void setB_discount(String b_discount) {
		this.b_discount = b_discount;
	}
	public String getB_pubdate() {
		return b_pubdate;
	}
	public void setB_pubdate(String b_pubdate) {
		this.b_pubdate = b_pubdate;
	}
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_publisher() {
		return b_publisher;
	}
	public void setB_publisher(String b_publisher) {
		this.b_publisher = b_publisher;
	}
	public String getB_img() {
		return b_img;
	}
	public void setB_img(String b_img) {
		this.b_img = b_img;
	}
	public String getB_description() {
		return b_description;
	}
	public void setB_description(String b_description) {
		this.b_description = b_description;
	}
	
	
}
