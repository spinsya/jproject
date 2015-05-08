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
 * Servlet implementation class ViewServlet
 */
@WebServlet("/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<h1>회원 상세페이지</h1><hr>");
		
		String id = request.getParameter("id"); //값을 받음
		
		//out.print(id);
		
		
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
	    
	    //3. sql문 실행
		PreparedStatement pstmt = null;
		String sql = "select * from member where id=?"; //아이디가 어떤것에 따라 조건
		
		
		  try {
		    	
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, id); //바인딩 위에 물음표값
				
				ResultSet rs = pstmt.executeQuery(); //selet문장이니까 query
				
				if(rs.next()) {
					out.print("<tabel border=1>");
					
					out.print("<tr>");
					out.print("<td>아이디: </td>");
					out.print("<td>"+rs.getString("id")+"</td><br>");
					out.print("</tr>");
					
					out.print("<tr>");
					out.print("<td>이름: </td>");
					out.print("<td>"+rs.getString("name")+"</td><br>");
					out.print("</tr>");
					
					out.print("<tr>");
					out.print("<td>나이: </td>");
					out.print("<td>"+rs.getString("age")+"</td><br>");
					out.print("</tr>");
					
					out.print("<tr>");
					out.print("<td>성별: </td>");
					out.print("<td>"+rs.getString("gender")+"</td><br>");
					out.print("</tr>");
					
					out.print("<tr>");
					out.print("<td>주소: </td>");
					out.print("<td>"+rs.getString("addr")+"</td><br>");
					out.print("</tr>");
					
					out.print("</table>");
					
					out.print("<a href ='delete.jsp?id=" + rs.getString("id") + "'>삭제</a>");
					
				}
				
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
