<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>

<%@page import="net.hb.test.TestDTO"%>
<%@page import="net.hb.test.TestSQL"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  </title>

 <style type="text/css">
   *{ font-size: 16pt; }
   a{ font-size: 16pt; text-decoration: none; }
   a:hover{ font-size: 20pt; text-decoration: underline; }
 </style>
 
 <script type="text/javascript">
 </script>
 
</head>
<body>
  
<%!
 Connection CN; //db서버연결정보, 명령어생성할때 참조
 Statement ST; //명령어생성 ST = CN.createStatement()
 PreparedStatement PST; //속도가빠름 PST = CN.prepareStatement("insert~/update~")
 ResultSet RS; //select조회한결과 RS=ST.executeQuery("select~~")
 
 int Gsabun, Gpay, Gcode ;
 String Gname, Gtitle, Gemail, Ggender ;
 java.util.Date  Gwdate;
 
 int Ghit, Gtotal, Stotal ;
 String msg ;  //msg="dml쿼리문기술 insert~/select~/update~/delete~"
 String data ;  //data=request.getParameter("idx");  
 String Gimage; //그림필드 img_file_name
%>

<% 
 try{
   //순서1 db데이터베이스 드라이브연결
   Class.forName("oracle.jdbc.driver.OracleDriver");
   //System.out.println("오라클드라이브 연결성공 111 2:39분 ");
   
   //순서2 db데이터베이스 서버정보주소및포트 계정id/pwd
   String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
   CN=DriverManager.getConnection(url ,"system","1234");
   //System.out.println("오라클서버정보및 id,pwd 연결성공 222 2:39분 ");
   
   ST=CN.createStatement(); //권장
 }catch(Exception ex){ System.out.println("db 에러 " + ex.toString());}
%>
  
  
 <%
  //자바문서연결  jsp문서에서 직접 순수자바문서연결 mvc1
  TestDTO tdto = new TestDTO();
  TestSQL tsql = new TestSQL();
 %>
  
</body>
</html>






