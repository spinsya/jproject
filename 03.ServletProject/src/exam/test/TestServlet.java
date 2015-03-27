package exam.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet") //URL맵핑
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		String n =request.getParameter("name");
		String a =request.getParameter("pwd");//매개변수(name) 매칭 중요
		String g =request.getParameter("gender");
		String c =request.getParameter("mycolor");
		String e =request.getParameter("myEmail");
		
		String[] hobby = request.getParameterValues("hobby");
		
		String subject = request.getParameter("subject");
		String txt = request.getParameter("txt");	
		
		PrintWriter out = response.getWriter();
		
		out.print("이름:"+n+"<br>");
		out.print("패스워드"+a+"<br>");
		out.print("성별"+g+"<br>");
		out.print("<font color='"+c+"'>"+c+"<br>"+"</font color>");
		
		if(hobby == null) // hobby가 null이면
			out.print("선택하세요.");
		else {
			out.print(hobby.length + "개 선택!"); //if는 몇개를 선택했는지 나타남
			
			for(int i=0; i<hobby.length; i++)
				out.print(hobby[i] + "<br>"); //for문은 무엇을 선택하는지 나타나게함
		
	
		
		
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
