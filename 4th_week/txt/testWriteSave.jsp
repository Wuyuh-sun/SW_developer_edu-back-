<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testWriteSave.jsp]</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; color:red ;}
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
   body{margin-left:10px;}
 </style>
</head>
<body>

  <img src="images/top.png">
  <h2>testWriteSave.jsp-단독실행하면 에러</h2>
  <%
    //request데이터전달 100% 문자열로 전달
    //자바에서 String타입을 int형으로 변환 Integer.parseInt(문자열)
   out.println("<h2>데이터받기 request내장객체 </h2>");
   String Gtitle = request.getParameter("title");
   int Gpay = Integer.parseInt(request.getParameter("pay"));
   out.println("<h2>제목데이터 = "+ Gtitle + "</h2>");
   out.println("<h2>급여데이터 = "+ Gpay + "</h2>");
   out.println("<h2>데이터받기 성공입니다 </h2>");
  %>
  
  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>



