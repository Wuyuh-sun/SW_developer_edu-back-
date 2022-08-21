<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>AAA.jsp</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none;}
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
</head>
<body>
  
    <!--  method="post" enctype="multipart/form-data"   -->
    <font size=7 color=blue> <b>AAA.jsp</b></font> 
    <form method="post" enctype="multipart/form-data"  action="BBB.jsp">
        <input type="hidden" name="sabun" value="7789"> <br>
       제목 : <input type="text" name="title" value="snow"> <br>
       파일 : <input type="file" name="fileimg"> <br>
             <input type="submit" value="파일전송테스트">
             <input type="reset" value="입력취소">
    </form>
 <div id="preview">
 </div>
  
</body>
</html>










