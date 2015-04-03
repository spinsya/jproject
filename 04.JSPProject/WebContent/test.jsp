<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
     	int num1 = 10, num2 = 20;
    	
    	int num3 = num1 + num2 ;
    	
    	out.print(num3); //내장객체이기 때문에 
    
    %>
    <!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    
    <% out.print("Hello"); %>
    <%= "Hello" %>
    
    
    
    </body>
    </html>