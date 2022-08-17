<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  </title>

 <style type="text/css">
   *{ font-size: 16pt; font-weight: bold; }
   a{ font-size: 16pt; text-decoration: none;  font-family: Comic Sans MS; }
   a:hover{ font-size: 20pt; text-decoration: underline; }
 </style>
 
 <script type="text/javascript">
 </script>
 
</head>
<body>
 <jsp:include page="test_header.jsp"></jsp:include>

 <h3> testList.jsp 향상된for반복문</h3>
 <table border="1" width="900"  cellspacing="0">
  	<tr align="right">
  		<td colspan="5"> 레코드갯수: <%= tsql.dbCount() %> &nbsp;  </td> 
  	</tr>
  	
  	<tr bgcolor="pink">
  		<td>제목데이터</td>  <td>급여</td>   <td>성별</td>  <td>날짜</td>  <td>이미지</td> 
  	</tr>
  	
 <%
   ArrayList<TestDTO> LG = tsql.dbList( ) ;
   for(TestDTO dto : LG) { 
 %>
 
  <tr>
  	   <td>  <a href="testDetail.jsp?idx=<%=dto.getCode()%>"> <%= dto.getTitle() %> </a>  </td>   
  	   <td> <%= dto.getPay() %> </td>  
  	   <td> <%= dto.getGender() %> </td> 
  	   <td> <%= dto.getWdate() %> </td>
  	   <td align="center">
  	     <img src="./storage/<%=dto.getImg_file_name()%>" width="100"  height="35"> 
  	   </td>
  </tr>	 
 <%  	 
   }//for end
 %> 	
 </table>
  

  <p>
  <a href="testWrite.jsp">[testWrite]</a>
  <a href="testList.jsp">[testList]</a>
  <a href="testListImage.jsp">[이미지게시판]</a>
  <a href="index.jsp">[index]</a>
  <a href="login.jsp">[로그인]</a>
</body>


</html>






