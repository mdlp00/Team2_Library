package com.library.bo.vo.BookInfo;
/**
 * 
 * @author	강찬규
 * @since	2019.07.30
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.30		BookRentVO 클래스 제작		작성자 : 강찬규
 */
public class BookRentVO {
	private int rno;				// 대출번호
	private String bookName;		// 도서명
	private String rentDate;		// 대출일자
	private String rDay;			// 반납예정일자
	private String returnDate;		// 반납일자
	private int overdue;			// 연체일수
	private char extended;			// 연장여부
	private int rMno;				// 대여회원번호
	
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getRentDate() {
		return rentDate;
	}
	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}
	public String getrDay() {
		return rDay;
	}
	public void setrDay(String rDay) {
		this.rDay = rDay;
	}
	public String getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	public int getOverdue() {
		return overdue;
	}
	public void setOverdue(int overdue) {
		this.overdue = overdue;
	}
	public char getExtended() {
		return extended;
	}
	public void setExtended(char extended) {
		this.extended = extended;
	}
	public int getrMno() {
		return rMno;
	}
	public void setrMno(int rMno) {
		this.rMno = rMno;
	}
	
}
