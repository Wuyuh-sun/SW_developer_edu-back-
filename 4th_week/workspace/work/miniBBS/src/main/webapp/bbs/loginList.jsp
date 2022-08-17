<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html> <head>
<title> [loginList.jsp]</title>
   <style type="text/css">
	  *{font-size:14pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 10px; }
	  a{font-size:14pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
	  a:hover{font-size:16pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
   </style>
</head>
<body>
<%
   String a = request.getParameter("userid");
   String b = request.getParameter("pwd");
  try{
   msg="select count(*) as cnt from login where userid =? and pwd =? ";
   PST=CN.prepareStatement(msg);
   		PST.setString(1, a);
   		PST.setString(2, b);
   RS=PST.executeQuery();
  }catch(Exception ex){ }
 if(RS.next()==true){ Gtotal=RS.getInt("cnt"); }
 if( Gtotal>0){	 
	 session.setAttribute("naver", a);
	 System.out.println(a+"회원님의 로그인성공!!! \n");
  }else{
  	System.out.println(a+"회원님의 로그인실패~~~ \n");
  	session.setAttribute("", a);
  	session.removeAttribute("naver");
  }
 
  response.sendRedirect("bbsList.jsp");
  %>
</body>
</html>







