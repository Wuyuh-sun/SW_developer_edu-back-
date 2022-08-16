<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [openID.jsp]</title>
 <style type="text/css">
    *{font-size:14pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 10px; }
	a{font-size:14pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
	a:hover{font-size:16pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
    body{margin-left:20px;}
 </style>
 
 <script type="text/javascript">
 
 </script>
</head>
<body bgcolor=yellow>
  <p/>
  <h2>openID.jsp</h2>
  
 <div>
  <img src="images/bar.gif" width=400><br>
	<form name="open_form" method="get" action="openIDSave.jsp">
	  코드:<input type="text" name="mycode" size="10" value="">
	         <input type="submit" value="중복처리">
	</form>
  <img src="images/bar.gif" width=400><br>
</div>
  
</body>
</html>







