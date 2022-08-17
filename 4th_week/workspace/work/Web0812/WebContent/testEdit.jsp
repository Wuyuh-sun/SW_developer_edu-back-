<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testEdit.jsp]</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
 
</head>
<body>
  <!-- 단독실행금지  -->
  
<%
 Gdata = request.getParameter("idx");
 msg = "select * from test where code = " + Gdata ; 
 ST = CN.createStatement();
 RS = ST.executeQuery(msg);
 if(RS.next()==true){
   Gtitle = RS.getString("title");
   Gpay = RS.getInt("pay");
   Gwdate = RS.getDate("wdate");
   Gcode = RS.getInt("code");
 }			 
%>  
  <h2>testEdit.jsp</h2>
  <form name="myform" method="get"  action="testEditSave.jsp">
    수정코드: <input type="text" name="code"   value="<%=Gcode%>"  readonly  id="code" > <br>
    수정제목: <input type="text" name="title"  value="<%=Gtitle%>"  id="title"   > <br>
    수정급여: <input type="text" name="pay"   value="<%=Gpay%>"     id="pay"  > <br>
         <input type="submit" value="서브밋수정"> 
         <input type="reset" value="수정입력취소"> 
  </form>
  
  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>







