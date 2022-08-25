<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html> <head>
<title> [loginList.jsp]</title>
   <style type="text/css">
	  *{font-size:16pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 3px; }
	  a{font-size:16pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
	  a:hover{font-size:20pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
   </style>
</head>
<body>   
 <p><br>

<% 
   String usera = request.getParameter("UID");
   String pwdb = request.getParameter("UPWD");
  try{
   msg="select count(*) as cnt from login where userid =? and pwd =? ";
   PST=CN.prepareStatement(msg);
   		PST.setString(1, usera);
   		PST.setString(2, pwdb);
   RS=PST.executeQuery();
  }catch(Exception ex){ System.out.println(ex); }
 if(RS.next()==true){ Gtotal=RS.getInt("cnt"); }
 
 if(Gtotal>0){  
%>
  <font size=7 color=purple>
    <b><%= usera %>님 로그인 성공!!!</b> <br>
  </font><p>
	<img src="images/bt_login.gif" width=450 height=70><p>
	<img src="./images/lollipop.gif" />
    <img src="./images/marshmallow.gif" />
    <img src="./images/nougat.gif" />
    <img src="./images/lollipop.gif" />
    <img src="./images/marshmallow.gif" />
    <img src="./images/nougat.gif" />
<%  
 }else{
   out.println("<font size=7 color=red><b></b>"+usera+"님 로그인실패</font><p>");
   out.println("<font size=7><a href='login_Ajax.jsp'>[로그인]</a></font>");
   out.println("<font size=7><a href='index.jsp'>[index]</a></font>");	
 }
%>
</body>
</html>







