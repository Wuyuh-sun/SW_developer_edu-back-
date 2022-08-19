<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [index.jsp]</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
 
 <script type="text/javascript">
    //웹브라우저에서 제공되는 객체 DOM돔 window,document,location문서이동,history,image,screen
    setTimeout("location.href='guestList.jsp'" , 3000) ;
 </script>
</head> 
<body>
  <p/>
  
  <div align="center">
	<font size=5 color=blue><b>  index.jsp  </b></font> <p>
    <video  width="600" autoplay  muted  loop  controls="controls">
 	  <source src="images/scuba.mp4" type="video/mp4" />
 	</video>
 	 <br> 
    <br>
    <img src="./images/lollipop.gif" />
    <img src="./images/marshmallow.gif" />
    <img src="./images/nougat.gif" />
    <img src="./images/lollipop.gif" />
    <img src="./images/marshmallow.gif" />
    <img src="./images/nougat.gif" /> 
    <br style="font-size:2em;"> 페이징+검색 guestList.jsp </br>

    <p>
  </div>
 
</body>
</html>







