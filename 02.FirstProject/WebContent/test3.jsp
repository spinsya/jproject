<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	out.print("Hello JSP"); // out=내장객체(총9개가있음)
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
    	
    	String name = request.getParameter("name"); //request = 내장객체, response
    	String id = request.getParameter("id");
		String password = request.getParameter("pwd");
    	
		out.print("이름 : "+name+"<br>");
    	out.print("아이디 : "+id+"<br>");
    	out.print("비번 : "+password+"<br>");
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>