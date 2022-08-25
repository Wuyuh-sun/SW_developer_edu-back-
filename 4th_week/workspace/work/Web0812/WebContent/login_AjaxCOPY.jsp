<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>[login_AjaxCOPY.jsp]</title>
	<style type="text/css">
		input, b{font-size: 20pt; font-weight: bold;}
		a{text-decoration: none;font-size: 20pt; font-weight: bold;}
		a:hover {color: red; font-size: 20pt; font-weight: bold;}
		#LOG-IN{
		  font-size:26pt; font-weight: bold; 
		  height:120; background-color:yellow; 
		}
	</style>
	
	<script type="text/javascript">
	  var xhr; //전역변수 
	        
	  function first( ){
		return new XMLHttpRequest( );
	  }//end
	  
	  function two(){  
		var a=document.getElementById("userid").value; 
		var b=document.getElementById("pwd").value; 
		var url="login_List.jsp?UID="+a+"&UPWD="+b;
		xhr=first();
		xhr.onreadystatechange=display;
		xhr.open("GET", url, true);
		xhr.send();
	 }//end
	  
	  function display( ){
		 if(xhr.readyState==4){
			if(xhr.status==200){
			 var message=xhr.responseText;
			 document.getElementById("my").innerHTML=message;
			}//200 end
		 }//4 end
	  }//end
	</script>
</head>
<body>
	

<div id="my" align="center">	
	<h1> login_AjaxCOPY.jsp 08-22-월요일 </h1>	
	<table width="550" border="1" cellspacing="0">
	  <form name="myform">
		<tr>
			<td width=350> <b>userid: </b></td>
			<td> <input type="text" name="userid" id="userid"  value="sky"></td>
			
			<td rowspan=2 align="center">
			 <input type="button" onclick="two( )" value="LOG-IN" id="LOG-IN" >
			</td>
		</tr>
		
		<tr>
			<td width=350><b>userpw: </b> </td>
			<td>
			  <input type="text"  name="pwd" id="pwd" value="1234">       
			</td>
		</tr>
		</form>
	</table>
</div>	
<div id="msg" align="center">
</div>

</body>
</html>

