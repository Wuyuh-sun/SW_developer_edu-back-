<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>BBB.jsp</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none;}
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
</head>
<body>
  <h2>BBB.jsp</h2>
 
<%
  String path = application.getRealPath("./storage");  
  System.out.println("공통저장경로 "+ path);
  
  int size = 1024*1024*7 ;
  DefaultFileRenamePolicy dfr=new DefaultFileRenamePolicy();
  //MultipartRequest mr=new  MultipartRequest(1request,2경로,3크기,4인코딩,5덮어씌우기dfr);
  //MultipartRequest mr=new  MultipartRequest(1request,2경로,3크기,4인코딩,);
  //MultipartRequest mr=new MultipartRequest(request,path,size,"UTF-8", dfr);
  MultipartRequest mr=new MultipartRequest(request,path,size,"UTF-8");
  
  String dsabun=mr.getParameter("sabun");
  String dtitle=mr.getParameter("title");
  String dimg=mr.getFilesystemName("fileimg");
  out.println("넘어온사번 = " + dsabun +"<br>");
  out.println("넘어온제목 = " + dtitle +"<br>");
  out.println("넘어온파일 = " + dimg +"<p>");
  File ff = mr.getFile("fileimg");
  out.println("<h2>"+dimg +" 파일크기는 "+ ff.length() +"Byte </h2>");
  
%> 

<!-- 우리가 업로드한 이미지출력 -->
<hr>
<img src="./storage/<%=dimg%>" width=400 height=250>
&nbsp;&nbsp;

<a href="BBBdownload.jsp?fileName=<%=dimg%>">
  <img src="<%=request.getContextPath()%>/storage/<%=dimg%>" width=400 height=250>
</a>
  <p>
  <a href="AAA.jsp">[AAA화면]</a>
  <a href="testWrite.jsp">[입력화면]</a>
  <a href="testList.jsp">[전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>