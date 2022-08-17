<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testDeleteSave.jsp]</title>
<style type="text/css">
</style>
</head>
<body>

<div align="center">
   <img src="images/tulips.png" width=500> <br>
   <br>
    <img src="./images/lollipop.gif" />
    <img src="./images/marshmallow.gif" />
    <img src="./images/nougat.gif" />
    <img src="./images/lollipop.gif" />
    <img src="./images/marshmallow.gif" />
    <img src="./images/nougat.gif" />
</div>
<%
   String my = (String)session.getAttribute("naver");
   if(my==null || my=="" || my.equals("")){
%>
 
   <script type="text/javascript">
     alert("회원전용 서비스입니다\n반드시 로그인후 서비스가 가능합니다");
     setTimeout("location.href='testList.jsp'" , 5000) ;
   </script> 
  
<%	   
   }else{
	   Gdata = request.getParameter("idx");
	   msg = "delete from test  where code = " + Gdata ;
	   System.out.println(msg);
	  
	  ST = CN.createStatement(); 
	  ST.executeUpdate(msg);
	  System.out.println(Gdata +" 코드 데이터 삭제성공 ");
	  response.sendRedirect("testList.jsp"); 
   }
%>
</body>
</html>



