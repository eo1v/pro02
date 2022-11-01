package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;

@WebServlet("/BoardList")
public class BoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String DRIVER = "com.mysql.cj.jdbc.Driver";
    String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    String USER = "root";
    String PASS = "a1234";
    
    String sql ="";
    
    public BoardListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	    try{
		//데이터 베이스 연결
		Class.forName(DRIVER);
		sql = "select * from notice order by notino desc";
		Connection con = DriverManager.getConnection(URL,USER,PASS); //import ctrl+shift+o 로 sql,  java util 설정 
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//결과를 데이터베이스로부터 받아서 리스트로 저장
		List<Notice> notiList = new ArrayList<Notice>();
		
		while(rs.next()){
			Notice vo = new Notice(); // vo 새로 생성 
			vo.setNotiNo(rs.getInt("notino")); //저장 ...내용채우기 
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setAuthor(rs.getString("author"));
			vo.setResdate(rs.getString("resdate"));
			notiList.add(vo); // 빈 칸에 내용추가 
		}
		request.setAttribute("notiList",notiList);
		// notice/boardList.jsp에 포워딩
		RequestDispatcher view = request.getRequestDispatcher("./notice/BoardList.jsp)"; // 목적지 지정 
		view.forward(request,response);
	   
	    }
	 }
	
}
