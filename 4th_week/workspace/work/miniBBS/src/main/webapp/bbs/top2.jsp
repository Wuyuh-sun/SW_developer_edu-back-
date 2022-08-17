<%@ page contentType="text/html; charset=UTF-8" %>

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
  
 <%
    //top2.jsp = top3.jsp동일
    String disp = "";
    disp = (String)session.getAttribute("naver");
    if(disp==null || disp.equals("")){ 
 %>
    <script type="text/javascript">
       var msg = document.getElementById("result");
       msg.innerHTML = "";
    </script> 	
<%    
    	System.out.println("로그인처리를 하셔야 합니다  top.jsp");
    	response.sendRedirect("login.jsp");
    }else{
     System.out.println(disp + " 로그인유저입니다  top.jsp" );    
 %>
 
    <div align="right">
	   <div id="result">
	     <form name="frm"> <input type="text" value="<%=disp%>" name="disp" id="disp">  </form>
		</div>	
	</div>
	
   <script type="text/javascript">
     var my = frm.disp.value;
     var msg = document.getElementById("result");
     msg.innerHTML = "<font color='red'> <b>" + my +"님 로그인성공!!!</b></font>";
   </script>
 <% } %>	  
</nav>
  
</div>