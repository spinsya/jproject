<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    <h2>설문조사</h2>
    <hr>
    <form action="02_research.jsp" method="get">
    <table border ="1">
    
    <tr>
    	<td> 이름 : </td>
    	<td> <input type="text" name="name"> </td>
    
    </tr>
    
    <tr>
    	<td> 성별 : </td>
    	<td> 
    	<input type="radio" name="gender" value="남자">남자
    	<input type="radio" name="gender" value="여자">여자
    </tr>
    <tr>
    	<td>  좋아하는 계절: </td>
    	<td>
    	<input type="checkbox" name="season" value="봄">봄
    	<input type="checkbox" name="season" value="여름">여름
    	<input type="checkbox" name="season" value="가을">가을
    	<input type="checkbox" name="season" value="겨울">겨울
		</td>    
    </tr>
    <tr align="center">
    	<td colspan = "2">
    	<input type="submit" value="전송">
    	
    	<input type="submit" value="취소">
    	</td>
    </tr>
    </table>
    </form>
    </body>
    </html>