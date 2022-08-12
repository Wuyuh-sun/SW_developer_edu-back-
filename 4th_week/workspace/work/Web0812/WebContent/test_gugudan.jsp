<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[test_gugu.jsp]</title>
<style>
* {
	font-size: 24pt;
	font-weight: bold;
}
a {
	fonst-size: 24pt;
	text-decoration:none;
	font-weight:bold;
	color:red;
}
a:hover {
	text-decoration:underline;
	color:blue;
}
</style>
</head>
<body>
	<img src="./0_images/bar.gif">
	<br>
	<img src="./0_images/bar.gif">
	<br>
	<h2>test_gugu.jsp</h2>


	<%
		int dan = 102;
		for(int a=1; a<10; a=a+1){
// 			System.out.println(dan + "*" + a + "=" + (dan*a));
			out.println("<div>" + dan + "*" + a + "=" + (dan*a) + "</div>");
		}
	
// 		문제 본인이름, 나이, 3.1415 출력
		String name = "우윤하";
		int age = 25;
		double pi = 3.1415;
		out.println("<br>");
		out.println("이름 = " + name + "<br>");
		out.println("나이 = " + age + "<br>");
		out.println("파이 = " + pi + "<br>");
		
	%>
	<P>
		<a href="https://www.daum.net">[daum]</a> <a
			href="https://www.naver.com">[naver]</a>
	</P>
</body>
</html>