<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    <h2> 설문 조사 결과</h2>
    <hr>
    <% 
    request.setCharacterEncoding("UTF-8");
    
    String name = request.getParameter("name");
    out.print("이름 : " + name + "<br>");
    
    String gender = request.getParameter("gender");
    out.print("성별 : " + gender + "<br>");
    
    String[] season = request.getParameterValues("season");
    
    if(gender.equals("남자")){
    	response.sendRedirect("http://www.naver.com");
    }
    else
    	response.sendRedirect("http://www.daum.net");
    
    
    if(season == null)
    	out.print("좋아하는 계절이 없습니다 선택하세요");
    
    else{
    	out.print("당신이 좋아하는 계절은 ");
    	for(int i = 0; i<season.length; i++ )
    		out.print(season[i]+""); 
    	
    		out.print("입니다 <br>");
    		
    		
    		
    }	
    
    
    %>
    
    </body>
    </html>