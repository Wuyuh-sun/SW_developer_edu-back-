<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  </title>
 <style type="text/css">
   *{ font-weight: bold;}
 </style>
 
 <script type="text/javascript">
 </script>
 
</head>
<body>
 <jsp:include page="test_header.jsp"></jsp:include>
 <h2> testDetail.jsp </h2>	
 <%
   TestDTO dto = tsql.dbDetail(Integer.parseInt( request.getParameter("idx")));
   Gcode = dto.getCode();
 %> 
 
  <table border="1" width="900"  cellspacing="0" cellpadding="20px">
  	<tr>
  		<td width="400"  rowspan="5" align="center">
  		  <img src="./storage/<%=dto.getImg_file_name()%>" width="400" height="300"> 
  		</td> 
  		<td> 제목:  <%= dto.getTitle() %>  </td>
  	</tr> 	
  	<tr>
  	    <td> 급여: <%= dto.getPay() %>  </td>
  	</tr>
  	<tr>
  	    <td> 날짜: <%= dto.getWdate() %>  </td>
  	</tr>
   	<tr>
  	   <td> 성별: <%= dto.getGender() %>  </td>
  	</tr>
  	<tr>
  	   <td> 
  	        <a href="testWrite.jsp">[testWrite]</a>
  			<a href="testList.jsp">[testList]</a>
  			<a href="testDelete.jsp?idx=<%=Gcode%>">[삭제]</a>
  			<a href="index.jsp">[index]</a>
  			<a href="testEdit.jsp?idx=<%=Gcode%>">[수정]</a>
  	   </td>
  	</tr>
 </table>
 
</body>
</html>






