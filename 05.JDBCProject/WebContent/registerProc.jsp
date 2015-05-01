<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"%>
    <%
    	//0. 요청처리
    	request.setCharacterEncoding("UTF-8"); //Post방식일때 한글처리
    	
    	String id = request.getParameter("id");
    	//out.print(id);
    	String pwd = request.getParameter("pwd");
    	String name = request.getParameter("name");
    	String gender = request.getParameter("gender");
    	String age = request.getParameter("age");
    	String addr = request.getParameter("addr");
    	 
    // 1. JDBC 드라이버 로드 0.0.0.패키지이름/클래스이름
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    // 2. 데이터 베이스와 연결
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
    
    // 3. SQL문 실행
    // 1) Statement 객체 이용 (거의 안씀 해킹당함!)
    /*String sql = "insert into member values('"+ id +"', '"+ pwd +"', '"+ name +"', 22, '1', '서울시', '2015-04-17')";
    Statement stmt = con.createStatement(); //statement 객체 만들기
    int result = stmt.executeUpdate(sql); //sql문에서 실행시키는것과 같은 의미 executeUpdate
    out.print("성공");*/
    
    // 2) PreparedStatement 객체 이용
    String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
    PreparedStatement pstmt = con.prepareStatement(sql);
    
    //바인딩
    pstmt.setString(1, id);
    pstmt.setString(2, pwd);
    pstmt.setString(3, name);
    pstmt.setString(5, gender);
    pstmt.setInt(4, Integer.parseInt(age));
    pstmt.setString(6, addr);
    
    int result = pstmt.executeUpdate(); // 실행
    
    out.print("가입완료");
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