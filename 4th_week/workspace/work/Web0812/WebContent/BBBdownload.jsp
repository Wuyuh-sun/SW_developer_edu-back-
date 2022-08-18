<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>BBBdownload.jsp</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none;}
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
</head>
<body>
  <h2>BBBdownload.jsp 단독실행금지</h2>
 <%
  //bbs폴더/filedownload.jsp문서참고
  String path = application.getRealPath("./storage");  
  System.out.println("공통저장경로 "+ path);
  String Gdata = request.getParameter("fileName");
  System.out.println("다운로드 대상 파일이름 " + Gdata);
  
  //팝업창 자바스크립트 window.open("파일명", "표식", "가로,높,left,top")
  //response.setHeader(name, value);
  response.setHeader("Content-Disposition", "attachment;filename="+Gdata);
  try{
	  File file = new File(path, Gdata);
	  InputStream is = new FileInputStream(file);//byte단위
	  OutputStream os = response.getOutputStream();
	  
	  //C,java,C# 표준데이터타입 int,char,boolean,byte, float
	  long size = file.length();
	  byte[] bt = new byte[(int)size];
	  is.read(bt,0, bt.length);
	  os.write(bt);
	  
	  is.close(); os.close();
  }catch(Exception ex){}
 %>

</body>
</html>