<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--  logout.jsp -->
    <%
   	session.removeAttribute("loginId");
    
    session.invalidate(); // 세션의 모든 값을 한번에 지워줌
    
    response.sendRedirect("main.jsp");
    %>
    <!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    
    </body>
    </html>