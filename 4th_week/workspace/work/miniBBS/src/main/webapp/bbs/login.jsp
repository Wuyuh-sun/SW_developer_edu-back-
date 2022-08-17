<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<div>
<img src='../images/carousel1.jpg' width='100%' height='200px'  id='topIMG'>
  
<nav id="topMenu">
  <ul>
      <li><a class='menuLink' href=''>index</a></li>
      <li><a class='menuLink' href='bbsList.jsp'>bbsList</a></li>
      <li><a class='menuLink' href='Input.html'>input</a></li>
      <li><a class='menuLink' href='bbsImgList.jsp'>bbsImage</a></li> 
      <li><a class='menuLink' href='login.jsp'>login</a></li> 
  </ul>	   
    <div align="right">
	   <div id="result"></div>	
	</div>
</nav>
  
</div>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
   <meta name="description" content="html5">
   <meta name="author" content="author">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title> [login.jsp]</title>
   <style type="text/css">
	  *{font-size:16pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 10px; }
	  a{font-size:16pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
	  a:hover{font-size:16pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
	  #LOG_IN{  
	    font-size:20pt; 
	    font-weight:bold;  
	    height:110px;
	    background:lightgreen;  
	   }
   </style>
</head>

<body>
<div align="center">
 <table width=500 border=1 cellspacing=0 cellpadding=0>
   <form action="loginList.jsp"  method="post">
   <tr>
   	 <td>UID:</td>
   	 <td width=200> <input type=text name="userid"  value="sky"> </td>
   	 <td rowspan="2"  align="center">
   	 	<input type="submit" value="LOG_IN" id="LOG_IN"> 
   	 </td>
   </tr>
   
   <tr>
   	  <td>PWD:</td>
   	  <td> <input type="password" name="pwd"  value="1234"> </td>
   </tr>
   </form>
 </table>


	<p>
	<a href="index.jsp"> [index]</a>
	<a href="Input.html"> [bbs입력화면]</a>
	<a href="bbsList.jsp"> [bbs전체출력]</a>
</div>
</body>
</html>