<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testWriteSave.jsp]</title>
</head>
<body>
<p>  
<%
   Gtitle = request.getParameter("title");
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gcode = Integer.parseInt(request.getParameter("code"));
   System.out.println("제목데이터 = "+ Gtitle );
   System.out.println("급여데이터 = "+ Gpay );
   System.out.println("코드데이터 = "+ Gcode );
   msg="insert into test(title,pay,wdate,code) values(?, ?, sysdate, ?)";
   
try{   
   PST = CN.prepareStatement(msg);
     PST.setString(1, Gtitle);
     PST.setInt(2, Gpay);
     PST.setInt(3, Gcode);
   PST.executeUpdate(); // PST.executeUpdate(msg기술하면에러발생);괄호안에 인자 없습니다 
   System.out.println(Gcode +"코드 데이터 PreparedStatement성공처리 8-18-목요일");
   response.sendRedirect("testList.jsp"); 
}catch(Exception ex){
   response.sendRedirect("testList.jsp"); 
   System.out.println("test테이블 저장실패 에러 " + ex);
}  
%>
  
  <!--  testWriteSave.jsp-단독실행하면 에러발생합니다 -->
  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>



