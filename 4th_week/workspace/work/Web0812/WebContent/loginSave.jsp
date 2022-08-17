<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ include file="ssi.jsp" %>

<html>
<head>
  <title> [loginSave.jsp] </title>
  <style>
    #myLogin{ margin-left: 200px; margi-top:200px; }
  </style>
</head>
<body>		
<%
  
  String userA=request.getParameter("userid");
  String pwdB=request.getParameter("pwd");
  //msg7="select count(*) as cnt from login where userid='"+ usera+"' and  pwd='" +pwdb+ "'";
  msg="select count(*) as cnt from login where userid=? and pwd=? ";
  System.out.println(msg);
  PST=CN.prepareStatement(msg);
  	PST.setString(1, userA);
  	PST.setString(2, pwdB);
  RS=PST.executeQuery();  //에러 RS=PST.executeQuery(msg); 
  if(RS.next()==true){ Gtotal=RS.getInt("cnt"); }
		  
  if(Gtotal>0){
  	 session.setAttribute("naver", userA); //userid값을 가짜변수 세션naver가짜이름에 넘김
  	  
  	 //Cookie ck = new Cookie(userA, userA); //웹서버에서 제공되는 쿠키내장클래스  
  	 //response.addCookie(ck); //쿠키추가등록
  	 response.sendRedirect("index.jsp");
  %>
   <font size=7 color=blue>
     <b><%= userA %>님 로그인 성공!!!</b> <br>
   </font><p>
	<img src="images/bt_login.gif" width=450 height=70><p>
	<img src="images/bar.gif" width=450 > <p>
 <%  
  }else{
	   out.println("<div id='myLogin' align='center'>"); 
  	   out.println("<b></b>"+userA+"님 로그인실패<br>");
       out.println("<a href='login.jsp'>[로그인]</a>");
       out.println("<a href='index.jsp'>[index]</a><br>");
       out.println("<img src='images/tulips.png' width=400 height=250 >");
       out.println("</div>");
 %> 	
  	<script type="text/javascript">
       setTimeout("location.href='login.jsp'", 2000); 
    </script>
<% } %>
	
	
</body>
</html>





