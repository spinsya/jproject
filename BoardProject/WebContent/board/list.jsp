<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<title>JSP/Servlet Example</title>
		<link rel="Stylesheet" type="text/css" href="../css/bootstrap.css"></link>
	</head>
	<!-- 
		상대경로
		.		현재폴더를 뜻함
		..		부모(상위) 폴더
		/		자식(하위) 폴더
	
	 -->
	
	<body>
		<!-- 메뉴 시작  -->
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">게시판관리</a>
		    </div>
		
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
		      <ul class="nav navbar-nav">
		        <li><a href="write.jsp">글쓰기<span class="sr-only">(current)</span></a></li>
		        <li class="active"><a href="#">리스트</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
	  <!-- 게시판 리스트 시작  -->
	  <fieldset>
	    <legend>게시판 리스트  </legend>
	  <table class="table table-striped table-hover ">
		  <thead>
		    <tr>
		      <th>#</th>
		      <th>제목</th>
		      <th>글쓴이</th>
		      <th>날짜</th>
		      <th>조회수</th>
		      <th>삭제</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>1</td>
		      <td><a href="view.jsp">Column content</a></td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr>
		      <td>2</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="info">
		      <td>3</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="success">
		      <td>4</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="danger">
		      <td>5</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="warning">
		      <td>6</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="active">
		      <td>7</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		  </tbody>
		  
		  
		  <!-- 페이지 이동, 검색, 글쓰기  -->
		  <tfoot>
		  	<tr align="center">
		  		<td colspan="5">
			  		
			  		<!-- 페이지 이동 처리  -->
					<ul class="pagination pagination-sm">
					  <li class="disabled"><a href="#">«</a></li>
					  <li class="active"><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#">4</a></li>
					  <li><a href="#">5</a></li>
					  <li><a href="#">6</a></li>
					  <li><a href="#">7</a></li>
					  <li><a href="#">8</a></li>
					  <li><a href="#">9</a></li>
					  <li><a href="#">10</a></li>
					  <li><a href="#">»</a></li>
					</ul>
		
					<!-- 검색   -->
					<div class="form-group">
				        <input type="checkbox" name="type" value="제목"> 제목
				      	<input type="checkbox" name="type" value="글쓴이"> 글쓴이 
				      		
						<input type="text" name="keyword">
						<a href="#" class="btn btn-danger">검색</a>
						<a href="write.jsp" class="btn btn-primary">글쓰기</a>
					</div>
		  		</td>
		  	</tr>
		  </tfoot>
		</table>
		
		
		
	  </fieldset>
	</body>
</html>