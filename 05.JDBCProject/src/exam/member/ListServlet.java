package exam.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 1. JDBC 드라이버 로드 0.0.0.패키지이름/클래스이름
	    try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    // 2. 데이터 베이스와 연결
	    Connection con = null;
	    try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    // 3. SQL문 실행
	    PreparedStatement pstmt = null;
	    String sql = "select * from member";
	    response.setContentType("text/html; charset=UTF-8");
	    
	    
	   PrintWriter out = response.getWriter();
	   
	    // 2) PreparedStatement 객체 이용
	    try {
	    	
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			out.print("<table border=1>");
			while(rs.next() == true) {
				
				out.print("<tr>");
				
				out.print("<td>" + rs.getString("id") + "</td>");
				out.print("<td>" + rs.getString("name") + "</td>");
				out.print("<td>" + rs.getInt("age") + "</td>");
				out.print("<td>" + rs.getString("gender") + "</td>");
				out.print("<td>" + rs.getString("addr") + "</td>");
				
				out.print("</tr>");
			}
			out.print("</table>");
				
				out.print(rs.getString("id"));
				
				out.print(rs.getString("name"));
				
				
			
				out.print("<br>");
				
				
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}

	
	
	
	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
