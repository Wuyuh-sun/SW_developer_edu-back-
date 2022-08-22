<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testDetail.jsp]</title>
</head>
<body>
<p>

<%
 //testDetail.jsp 한건상세는 조건 code값으로 조회, 단독실행하면안됨 
 Gdata = request.getParameter("idx");
 msg = "select * from  test where code = " + Gdata;
 ST = CN.createStatement(); //명령어생성
 RS = ST.executeQuery(msg); //생성된명령 ST에 쿼리문을 실행해서 결과를 RS기억해요
 if(RS.next()==true){
	Gtitle = RS.getString("title");
	Gpay = RS.getInt("pay");
	Gwdate = RS.getDate("wdate");
	Gcode = RS.getInt("code");
 }			
%>
 
<p>
 <table width="900" border="1" cellspacing="0" cellpadding="7">
   <tr align="center">
    <td colspan="2">
        testDetail.jsp</br>
     </td>
   </tr>

   <tr>
   	 <td rowspan="4" align="center"> <img src="images/pic6.png" width="500" height="300" >  </td>
   	 <td width="400"> 코드: <%= Gcode %> </td> 
   </tr>  
   
   <tr>	<td> 제목: <%= Gtitle %>  </td>   </tr>
   <tr> <td> 날짜: <%= RS.getDate("wdate") %> </td>  </tr>    
   <tr> <td> 급여: <%= RS.getInt("pay") %> </td>    </tr>  
     
   <tr align="center">
    <td colspan="2">
        <a href="testEdit.jsp?idx=<%=Gcode%>">[수정]</a>
    	<a href="testWrite.jsp">[등록]</a>
    	<a href="testDeleteSave.jsp?idx=<%=Gcode%>">[삭제]</a>
 		<a href="index.jsp">[index]</a>
 		<a href="testList.jsp">[전체출력]</a>
    </td>
   </tr>
 </table>

</body>
</html>







