<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testWrite.jsp]</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
</head>
<body>
  <p/>
  <h2>testWrite.jsp</h2>
  
  <form name="myform" method="get" action="testWriteSave.jsp">
    제목: <input type="text" name="title" id="title"><br>
    급여: <input type="text" name="pay" id="pay"><br>
         <input type="submit" value="데이터저장"> &nbsp;
         <input type="reset" value="입력취소"> 
  </form>
  
  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>







