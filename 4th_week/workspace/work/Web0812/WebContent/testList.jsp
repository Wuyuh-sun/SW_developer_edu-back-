<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testList.jsp]</title>
</head>
<body>

 <p>
 <h1>testList.jsp</h1>
 <table border="1" width="1200" cellspacing="0">
   <tr bgcolor="pink">
     <td>코 드</td> <td>제 목</td>  <td>날 짜</td> <td>급 여</td>
   </tr>
   
<%
 msg = "select  *  from  test order  by code";
 ST = CN.createStatement(); //명령어생성
 RS = ST.executeQuery(msg); //생성된명령 ST에 쿼리문을 실행해서 결과를 RS기억해요
 while(RS.next()==true){
	 Gtitle = RS.getString("title");
	 Gpay = RS.getInt("pay");
	 Gwdate = RS.getDate("wdate");
	 Gcode = RS.getInt("code");
	 System.out.println(Gcode + " " + Gtitle + " " + Gwdate + " " + Gpay); //콘솔창=관리자만보여요
%>
  <tr>
     <td> <%= Gcode %> </td>
     <td> <%= Gtitle %> </td>
     <td> <%= Gwdate %> </td>
     <td> <%= Gpay %> </td> 
  </tr>
<% }//while end %>
 </table>  

  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>







