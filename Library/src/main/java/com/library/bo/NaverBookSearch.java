package com.library.bo;

import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;

import org.jdom2.*;
import org.jdom2.input.*;

import com.library.bo.vo.*;


public class NaverBookSearch {
	public static List<BookPasingVO> searchBook(String search) {
		List<BookPasingVO> list = new ArrayList<BookPasingVO>();
		
		try {
				String clientId = "vwFmX6okRdSzrCYV2uBt";
				String clientSecret = "spnOonKHoD";
		        search = URLEncoder.encode(search, "utf-8");
				String urlStr = "https://openapi.naver.com/v1/search/book.xml?query=" + search + "&start=1&display=50";
				
				URL url = new URL(urlStr);
				
				
				HttpURLConnection connection = (HttpURLConnection)url.openConnection();
				//발급받은 ID
				connection.setRequestProperty("X-Naver-Client-Id", clientId);
				//발급받은 PW
				connection.setRequestProperty("X-Naver-Client-Secret", clientSecret); 
				// 받을요청타입
				connection.setRequestProperty("Content-Type", "application/xml"); 
				connection.connect();
	
					
				SAXBuilder builder = new SAXBuilder();
				Document   doc = builder.build (connection.getInputStream());
	
				Element  root = doc.getRootElement();
				List item_list = root.getChild("channel").getChildren("item");
	
				for(Object e : item_list){
				Element item = (Element)e;
				
				BookPasingVO bvo = new BookPasingVO();
				
				String title = item.getChildText("title");
				String author = item.getChildText("author");
				String publisher = item.getChildText("publisher");
				String description = item.getChildText("description");
				String image = item.getChildText("image");
				
				String price = item.getChildText("price");
				String discount = item.getChildText("discount");
				String pubdate = item.getChildText("pubdate");
				String isbn = item.getChildText("isbn");
				
				//System.out.println(title);
				//System.out.println(author);
				//System.out.println(publisher);
				//System.out.println(description);
				//System.out.println(image);
				//System.out.println(price);
				//System.out.println(discount);
				//System.out.println(pubdate);
				//System.out.println(isbn);
				
				bvo.setTitle(title);
				bvo.setImage(image);
				bvo.setAuthor(author);
				bvo.setPublisher(publisher);
				bvo.setDescription(description);
				
				bvo.setPrice(price);
				bvo.setDiscount(discount);
				bvo.setPubdate(pubdate);
				bvo.setIsbn(isbn);
				
				/*
				 * System.out.println("======================================");
				 * System.out.println("title : " + title); System.out.println("image : " +
				 * image); System.out.println("author : " + author);
				 * System.out.println("publisher : " + publisher);
				 * System.out.println("description : " + description);
				 */
				list.add(bvo);
			}
				
	
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;

	}
	
	public static void main(String[] args) {
		// List<BookPasingVO> list =  NaverBookSearch.searchBook("JSP");
		List<BookPasingVO> list =  NaverBookSearch.searchBook("역사");
		
		
		
		
		//디비 연결
	    //내 db 접속에 사용할 conn 변수
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    //오라클 드라이버 경로 설정
	    String driver = "oracle.jdbc.driver.OracleDriver";
	    //내 db의 계정 경로 설정
	    String url = "jdbc:oracle:thin:@localhost:1521:xe";
	    //접속 성공,실패 여부 사용시 쓰는 변수
	    Boolean connect = false;
	    
	    //db 접속 코드는 반드시 try~catch문 안에 써줘야함
	    try {
	        //오라클 드라이버 접속
	        Class.forName(driver);
	        //내 db 접속
	        conn = DriverManager.getConnection(url, "library", "increpas");
	        //접속성공시 true 설정
	        connect = true;
	        
	        for(int i=0;i<list.size(); i++) {
	        	
	        String sql = "INSERT INTO book (b_no, class_no, b_name, b_writer, b_publisher, b_img, b_description, b_price, b_discount, b_pubdate, b_isbn)"
	        		+ "VALUES ((select nvl(max(b_no),0)+1 from book),900,?,?,?,?,?,?,NVL(?,'할인정보 없음'),?,?)";

	        pstmt = conn.prepareStatement(sql);
	        
	        String title = list.get(i).getTitle();
	        String author = list.get(i).getAuthor();
	        String publisher = list.get(i).getPublisher();
	        String img = list.get(i).getImage();
	        String description = list.get(i).getDescription();
	        String price = list.get(i).getPrice();
	        String discount = list.get(i).getDiscount();
	        String pubdate = list.get(i).getPubdate();
	        String isbn = list.get(i).getIsbn();
	        
	        System.out.println(title);
	        System.out.println(author);
	        System.out.println(publisher);
	        System.out.println(img);
	        System.out.println(description);
	        System.out.println(price);
	        System.out.println(discount);
	        System.out.println(pubdate);
	        System.out.println(isbn);

	        pstmt.setString(1, title);
	        pstmt.setString(2, author);
	        pstmt.setString(3, publisher);
	        pstmt.setString(4, img);
	        pstmt.setString(5, description);
	        pstmt.setString(6, price);
	        pstmt.setString(7, discount);
	        pstmt.setString(8, pubdate);
	        pstmt.setString(9, isbn);
	        
	        pstmt.executeUpdate();
	        System.out.println("업데이트 성공");
	        }
	    } catch (Exception e) {
	        //접속 실패시 false 잡고 예외처리해줌
	        connect = false;
	        e.printStackTrace();
	    }finally {
	        //접속 끊기, 끊는 이유 : 항상 db가 연결되어 있으면 접속 오류 및 데이터 충돌이 일어나기 때문 
	        try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {}
		}
		
				
	}
}
