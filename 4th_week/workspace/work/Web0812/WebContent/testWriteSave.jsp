<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[testWriteSave.jsp]</title>
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
	<img src="./0_images/top.png">
	<h2>testWriteSave.jsp</h2>
	<%
		out.println("<h2>데이터받기 request내장객체 </h2>");
		String Gtitle = request.getParameter("title");
		String Gpay = request.getParameter("pay");
		out.println("<h2>제목데이터 = " + Gtitle + "</h2>");
		out.println("<h2>급여데이터 = " + Gpay + "</h2>");
		out.println("<h2>데이터 받기 성공</h2>");
		
	%>
	<p>
		<a href="testWrite.jsp">[게시판입력화면]</a>
		<a href="testList.jsp.jsp">[게시판전체출력]</a>
		<a href="index.jsp">[index]</a>
	</p>
</body>
</html>