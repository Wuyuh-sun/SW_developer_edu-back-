<%@ page contentType="text/html; charset=UTF-8" %>

<link rel="stylesheet" type="text/css" href="../css/style.css">
<div>
<img src='../images/carousel1.jpg' width='100%' height='200px'  id='topIMG'>
  
<nav id="topMenu">
  <ul>
      <li><a class='menuLink' href='index.jsp'>index</a></li>
      <li><a class='menuLink' href='bbsList.jsp'>bbsList</a></li>
      <li><a class='menuLink' href='Input.html'>input</a></li>
      <li><a class='menuLink' href='bbsImgList.jsp'>bbsImage</a></li> 
      <li><a class='menuLink' href='login.jsp'>login</a></li> 
      
<%
  String LG = (String)session.getAttribute("naver");
  if(LG==null || LG==""){  
%>	


<%
  }else{ 
%>	  
  <li> <table><tr> <td> </td><%= LG %>님 로그인 </tr></table> </li> 	
	  
<% } %>     
  </ul>	  
</nav>
</div>

