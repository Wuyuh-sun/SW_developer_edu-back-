<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#top {
	margin-top: 30px;
}
</style>
</head>
<body>
	<div align="center">
		<h2>index.jsp</h2>
		<img src="./0_images/tulips.png" width=450 height=350>
		<p>
			<a href="testWrite.jsp">[게시판입력화면]</a> 
			<a href="testList.jsp">[게시판전체출력]</a>
			<a href="index.jsp">[index]</a>
		</p>
	</div>
	<script>
		setTimeout(()=>{
			location.href = "testList.jsp";
		},3000)
	</script>
</body>
</html>