<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> </title>
	<style type="text/css">
	  * {font-size: 14pt; font-weight: bold; }
	  a {font-size: 14pt; text-decoration: none; color:blue; }
	  a:hover {font-size: 14pt; text-decoration: underline; color:greeen; }
	</style>
</head>
<body bgcolor="yellow">
 <%
  String Gdata=request.getParameter("idx");
  System.out.println("openID.java넘어온 중복체크사번=" + Gdata);
 %>

	<!-- openID.jsp -->
	<div align="center">
	 <img src="images/bar.gif" width=400> <br>
	  <form  name="subform">
		아이디:<input type=text name=userid value=<%=Gdata%>>
			 <input type="submit" value="중복확인">
	  </form>		 
	  <img src="images/bar.gif" width=400>
	</div>
</body>
</html>









