package com.library.bo.vo.LibraryInfo;

import java.util.List;

/**
 * @author Koala
 *
 */   
public class NoticeVO {
	private int rno;
	private int no; //번호
	private String title; //제목
	private String name; //작성자
	private String ndate; // 작성날짜
	private int views; //클릭수
	private String isShow; //공개여부
	private String body; //본문글
	private String word;//검색어
	private List<NoticeVO> list;

	
	public List<NoticeVO> getList() {
		return list;
	}
	public void setList(List<NoticeVO> list) {
		this.list = list;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNdate() {
		return ndate;
	}
	public void setNdate(String ndate) {
		this.ndate = ndate;
	}
	
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getIsShow() {
		return isShow;
	}
	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}


}
