<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testWriteSaveST.jsp]</title>
</head>
<body>
<p>  
<%
   //testWriteSaveST.jsp
   //자바에서 String타입을 int형으로 변환 Integer.parseInt(문자열)
   Gtitle = request.getParameter("title");
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gcode = Integer.parseInt(request.getParameter("code"));
   out.println("제목데이터 = "+ Gtitle + "<br>");
   out.println("급여데이터 = "+ Gpay + "<br>");
   out.println("코드데이터 = "+ Gcode + "<br>");
   out.println("데이터받기 성공, 절대 단독실행하면 에러발생합니다  <br>");
   //msg = "insert into test(title,pay,wdate,code) values('snow',24,sysdate,7700)";
   //msg = "insert into test(title,pay,wdate,code) values('Gtitle',Gpay,sysdate,Gcode)";
   //msg = "insert into test values('Gtitle',Gpay,sysdate,Gcode)";
   msg = "insert into test values('"+Gtitle+"',"+Gpay+",sysdate,"+Gcode+")";
   out.println(msg);
   System.out.println(msg);
   
try{   
   //testWriteSaveST.jsp
   ST = CN.createStatement(); //명령어생성
   ST.executeUpdate(msg); //진짜 db서버저장처리
   out.println(Gcode +"코드 데이터 성공처리 ");
   System.out.println(Gcode +"코드 데이터 성공처리 ");
   response.sendRedirect("testList.jsp"); //response내장객체문서 이동
}catch(Exception ex){
   response.sendRedirect("testList.jsp"); //저장실패시에도 문서이동
   System.out.println("test테이블 저장실패 에러 " + ex);
   out.println("test테이블 저장실패 에러 " + ex);
}  
%>
  
  <!--  testWriteSaveCOPY.jsp-단독실행하면 에러발생합니다 -->
  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>



