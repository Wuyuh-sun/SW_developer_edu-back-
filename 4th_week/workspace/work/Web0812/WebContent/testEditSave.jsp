<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testEditSave.jsp]</title>
</head>
<body>
<p>  
<%
   //현재문서는 testEditSave.jsp문서 진짜 수정처리 update ~ set  ~ where ~
   String  eGtitle = request.getParameter("title");
   int  eGpay = Integer.parseInt(request.getParameter("pay"));
   int  eGcode = Integer.parseInt(request.getParameter("code"));
   System.out.println("수정제목데이터 = "+ eGtitle );
   System.out.println("수정급여데이터 = "+ eGpay );
   System.out.println("수정코드데이터 = "+ eGcode );
   msg = "update test set title=?, pay=?, wdate=sysdate where code = ? ";
   //msg = "update test set title='"+eGtitle+"', pay="+eGpay+", wdate=sysdate  where  code="+eGcode;   
try{   
   //ST = CN.createStatement(); 
   //ST.executeUpdate(msg); 
   PST = CN.prepareStatement(msg);
   	  PST.setString(1, eGtitle);
   	  PST.setInt(2, eGpay);
   	  PST.setInt(3, eGcode);
   PST.executeUpdate(); //진짜수정처리함수 
   System.out.println(eGcode +"코드 데이터 수정성공  08-18-목요일 PreparedStatement성공");
   response.sendRedirect("testList.jsp"); 
}catch(Exception ex){
	System.out.println("test테이블 수정실패 에러 " + ex);
    response.sendRedirect("testList.jsp"); 
}  
%>
</body>
</html>



