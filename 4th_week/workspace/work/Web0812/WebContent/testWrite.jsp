<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[testWrite.jsp]</title>
<style>
* {
	font-size: 24pt;
	font-weight: bold;
}

a {
	fonst-size: 24pt;
	text-decoration: none;
	font-weight: bold;
	color: red;
}

a:hover {
	text-decoration: underline;
	color: blue;
}
#top{
	margin-top: 30px;
}
</style>
</head>
<body>
	<p id="top"></p>
	<h2>testWrite.jsp</h2>
	
	<form method="get" action="testWriteSave.jsp">
		<h2>Get방식</h2>
		제목: <input type="text" name="title" id="title"><br>
		급여: <input type="text" name="pay" id="pay"><br>
		<input type="submit" value="데이터전송"><br>
		<input type="reset" value="입력취소"><br>
	</form>
	
	<form method="post" action="testWriteSave.jsp">
		<h2>Post방식</h2>
		제목: <input type="text" name="title" id="title"><br>
		급여: <input type="text" name="pay" id="pay"><br>
		<input type="submit" value="데이터전송"><br>
		<input type="reset" value="입력취소"><br>
	</form>
	
	<p>
		<a href="testWrite.jsp">[게시판입력화면]</a>
		<a href="testList.jsp.jsp">[게시판전체출력]</a>
		<a href="index.jsp">[index]</a>
	</p>
</body>
</html>