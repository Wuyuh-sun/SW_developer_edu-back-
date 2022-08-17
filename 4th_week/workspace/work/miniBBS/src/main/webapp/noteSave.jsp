<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="html5">
  <meta name="author" content="kim young">
  
  <style type="text/css">
  		*{font-size:20pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 10px; }
		a{font-size:20pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
		a:hover{font-size:24pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
  </style>
</head>
<body>
 <%
  String a=request.getParameter("user_name");
  int b=Integer.parseInt(request.getParameter("user_pwd") );
  String c=request.getParameter("gender");
  String d=request.getParameter("job");
  String[] e=request.getParameterValues("hobby"); //체크박스만   배열로 받으세요

 %>
 <hr>
 닉네임: <%= request.getParameter("user_name")  %> <br>
 비밀번: <%= request.getParameter("user_pwd")  %> <br>
 성 별:  <%=request.getParameter("gender")  %> <br>
 직 업:  <%=request.getParameter("job")  %> <br>
 취 미:  <% for(String data: e){ out.println( data+" ");} %> <br>

</body>
</html>
