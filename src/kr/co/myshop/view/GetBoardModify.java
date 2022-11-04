package kr.co.myshop.view;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetBoardModify")
public class GetBoardModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
	private final static String USER = "root";
	private final static String PASS = "a1234";
	String sql = "";
	cnt = 0;
  
  	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  			request.setCharacterEncoding("UTF-8");
  			response.setCharacterEncoding("UTF-8");
  			response.setContentType("text/html; UTF-8");
  		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			sql = "update * from board order by board desc";
			Connection con = DriverManager.getConnection(URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			cnt = pstmt.executeUpdate();
  		}catch(Execute e){
  			}
  		}

			

}
