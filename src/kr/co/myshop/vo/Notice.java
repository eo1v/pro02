package kr.co.myshop.vo;
//공지사항 클래스
public class Notice {
	private int notiNo;		//공지번호
	private String title;	//제목
	private String content;	//내용
	private String author;	//작성자
	private String resdate;	//작성일
	private int visited; 	// 방문횟수 
	
	public int getNotiNo() {
		return notiNo;
	}
	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	
}
