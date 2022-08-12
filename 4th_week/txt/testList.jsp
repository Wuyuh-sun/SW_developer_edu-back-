<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testList.jsp]</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
</head>
<body>
  <p/>
  <h1>testList.jsp</h1>
  <table border="1" width="900" cellspacing="0">
     <tr>
       <td>번호</td> <td>제목</td> <td>급여</td>
     </tr>
     
     <tr>
       <td>7700</td> <td>일요일</td> <td>31</td>
     </tr>
     
     <tr>
       <td>5500</td> <td>수요일</td> <td>81</td>
     </tr>
  </table>  

  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>







