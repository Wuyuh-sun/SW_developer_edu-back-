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
try{
   //testWrite.jsp문서부터 실행
   Gtitle = request.getParameter("title");
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gcode = Integer.parseInt(request.getParameter("code"));
   System.out.println("제목데이터 = "+ Gtitle + "<br>");
   System.out.println("급여데이터 = "+ Gpay + "<br>");
   System.out.println("코드데이터 = "+ Gcode + "<br>");
   out.println("제목데이터 = "+ Gtitle + "<br>");
   out.println("급여데이터 = "+ Gpay + "<br>");
   out.println("코드데이터 = "+ Gcode + "<br>");
   
   //모델1=mvc1=model+view+controller
   TestDAO dao = new TestDAO(); //new키워드가 메모리heap영역에 로드 
   dao.testInsertSave(Gtitle, Gpay, Gcode);
}catch(Exception ex){ out.println("저장에러" + ex) ;}
   //response.sendRedirect("testList.jsp");
%>
  
  
</body>
</html>



