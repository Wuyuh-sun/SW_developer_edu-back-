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
   //testWrite.jsp문서에서 데이터받기
   Gtitle = request.getParameter("title");
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gcode = Integer.parseInt(request.getParameter("code"));
  
   TestDAO dao = new TestDAO(); //new키워드가 메모리heap영역에 로드 
   dao.testInsertSave(Gtitle, Gpay, Gcode);
   //ctrl + testInsertSave클릭
   //testInsertSave()함수에서 되돌아올때  ctrl + alt + 방향키 -> 
   response.sendRedirect("testList.jsp");
%>
  
  
</body>
</html>



