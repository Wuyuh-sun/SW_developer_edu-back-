<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testEditSaveCOPY.jsp]</title>
</head>
<body>
<p>  
<%
   //웹문서는 데이터 받을때 무조건 문자열로 받습니다
   //자바에서 String타입을 int형으로 변환 Integer.parseInt(문자열)
   //testEditCOPY.jsp문서의 form태그에서 수정된 데이터 
   Gtitle = request.getParameter("title");
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gcode = Integer.parseInt(request.getParameter("code"));
   System.out.println("수정제목데이터 = "+ Gtitle );
   System.out.println("수정급여데이터 = "+ Gpay );
   System.out.println("수정코드데이터 = "+ Gcode );
   //msg = "update  test set title='LA', pay=6, wdate=sysdate where code = 7700 ";
   msg = "update test set title='"+Gtitle+"', pay="+Gpay+", wdate=sysdate  where  code="+Gcode;
   System.out.println(msg); //insert ~~ /update ~~ Statement명령어대신 PreparedStatement권장
   
try{   
   ST = CN.createStatement(); //명령어생성
   ST.executeUpdate(msg); //진짜 db서버수정처리
   System.out.println(Gcode +"코드 데이터 수정성공 ");
   response.sendRedirect("testList.jsp"); //response내장객체문서 이동
}catch(Exception ex){
	System.out.println("test테이블 수정실패 에러 " + ex);
   response.sendRedirect("testList.jsp"); //저장실패시에도 문서이동
}  
%>
</body>
</html>



