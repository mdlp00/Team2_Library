package com.library.bo.vo.BookInfo;
/**
 * 
 * @author	강찬규
 * @since	2019.07.30
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.07.30		BookReserveVO 클래스 제작		작성자 : 강찬규
 */

public class BookReserveVO {
	private int rno;				// 예약 번호
	private String bookName;		// 책 이름
	private String reserveDate;		// 예약 날짜
	private int order;				// 예약 순서
	
	
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
	public String getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	
}
