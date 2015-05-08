<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"%>
    
 
    
    <%
    String id = request.getParameter("id");
    // 1. JDBC 드라이버 로드 0.0.0.패키지이름/클래스이름
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    // 2. 데이터 베이스와 연결
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
    
 // 3. SQL문 실행
    String sql = "delete member where id=?"; //선택한값만 지우기
    PreparedStatement pstmt = con.prepareStatement(sql);
    
    //바인딩
     pstmt.setString(1, id);
    
     int result = pstmt.executeUpdate();
     
     if(result == 1)
     	response.sendRedirect("list"); //1일때 바로 리스트로 
     
     // 4. 데이터베이스와 연결 끊음
     pstmt.close();
     //stmt.close();
     con.close();
  
   

    %>
    
    
    <!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    
    </body>
    </html>