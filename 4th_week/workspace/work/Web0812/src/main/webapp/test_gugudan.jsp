<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title> [gugudan문서] </title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; color:red ;}
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
 </style>
</head>
<body>
 
 <img src="./images/bar.gif"> <br>
 <img src="./images/bar.gif"> <br>
 <h2> 구구단문서 </h2>

  <%
    int dan = 102;
    for(int a=1 ; a<10 ; a=a+1) {
      //System.out.println( dan + "*" + a + "=" + (dan*a)) ;
      out.println( dan + "*" + a + "=" + (dan*a) +"<br>") ; //웹화면 자바관련내용출력
    }
    
     String name = "김영임" ;
     int age = 24 ;
     double pi = 3.1415 ;
     out.println("<br>");
     out.println("이름 = " + name +"<br>");
     out.println("나이 = " + age +"<br>");
     out.println("파이 = " + pi +"<br>");
   %>
   
   <p>
   <a href="https:www.daum.net">[카카오]</a>
   <a href="https:www.python.org">[파이썬]</a>
   <a href="https:www.naver.com">[네이버]</a>
   
   <p><br><br>
</body>
</html>




