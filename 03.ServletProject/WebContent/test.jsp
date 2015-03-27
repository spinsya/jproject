<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    	<style>
    	body{
    		background-image:url("문기의진.jpg");
    		background-repeat:no-repeat; //사진배경 반복 안되게 하는것
    		background-attachment:fixed; //사진배경 고정 시키는것
    		
    	}
    		input,select, textarea {
    			border : green 2pt solid;
    			color : red;
    			font-size:20px;
    			background-color:pink; 
    		
    		}
    	
    	</style>
    	
    	<script> //밑에 onsubmit을 호출시킴
    		function gofunc() {
    			
    			alert("Hello JavaScript!");
    		}
    	
    	</script>
    	
    </head>
    
    <body>
    <!-- test.jsp -->
    <h1>request test</h1>
    <hr>
    
    <form action="TestServlet" onsubmit="return gofunc()"> //onsubmit부터 입력안하고 전송 했을시창뜨게하는것
    	<label for="name">이름:</label><input type="text" id="name" name="name"><br>
    	<label for="pwd">패스워드:</label><input type="password" id="pwd" name="pwd" ><br>
    	<input type="radio" name="gender" value="남자"> 남자
    	<input type="radio" name="gender" value="여자"> 여자 <br>
    	
    	<input type="checkbox" name="hobby" value="축구">축구
    	<input type="checkbox" name="hobby" value="야구">야구
    	<input type="checkbox" name="hobby" value="농구">농구<br>
    	
    	
    	<input type="color" name="mycolor"><br>
    	<input type="email" name="myEmail"><br>
    	
    	<select name="subject"> //선택은 하나밖에 되지 않음 넘어가는 값도 하나
    		<option value="java">Java</option>
    		<option value="jsp">JSP</option>
    		<option value="html">HTML</option>
    	</select><br>
    	
    	<textarea rows="70" cols="50" name="txt"><</textarea>
    	
    	<input type="submit" value="서버로 제출">
    	
    	
    </form>
    
    </body>
    </html>