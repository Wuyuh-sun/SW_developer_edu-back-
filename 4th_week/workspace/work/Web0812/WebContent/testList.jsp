<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testList.jsp]</title>
 <style type="text/css">
    * {font-size:20pt;  }
    a {font-size:20pt;  text-decoration:none; color:black;}
    a:hover{font-size:24pt;  text-decoration:underline ; color:blue ;}
    body{margin-left:20px;}
 </style>
</head>
<body>

<%
 msg ="select count(*) as cnt from  test " ;
 ST = CN.createStatement();
 RS = ST.executeQuery(msg);
 if(RS.next()==true){ total = RS.getInt("cnt"); }
%>
 <p>
 <h1>testList.jsp</h1>
 <table border="1" width="1000" cellspacing="0">
   <tr align="right">
      <td colspan="4"> 
    	    <a href="testWrite.jsp">[입력화면]</a>
    	    <a href="testList.jsp">[출력]</a>
    	    <a href="index.jsp">[index]</a>
    	    <a href="login.jsp">[로그인]</a>
    	    데이터갯수 : <%= total %> &nbsp;&nbsp;
      </td>
   </tr>
 
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
%>
  <tr>
     <td> <%= Gcode %> </td>
     <td> <a href="testDetail.jsp?idx=<%=Gcode%>"> <%= Gtitle %> </a> </td>
     <td> <%= Gwdate %> </td>
     <td> <%= Gpay %> </td> 
  </tr>
<% }//while end %>
 </table>  

  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
  <a href="login.jsp">[로그인]</a>
  
</body>
</html>







