package exam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MemberDAO {
	
	//생성자
	public MemberDAO(){
		System.out.println("생성자");
		
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
		
	}

	
	//회원가입
	public void insertMember(Member member) {
		System.out.println("회원가입 !!");
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
	}
	
	//회원삭제
	public void deleteMember() {
		System.out.println("회원삭제 !");
		
	}
	
	

}
