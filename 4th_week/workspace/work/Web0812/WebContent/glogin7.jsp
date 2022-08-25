<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>[glogin7.jsp]</title>
	<style type="text/css">
		input, b{font-size: 20pt; font-weight: bold;}
		a{text-decoration: none;font-size: 20pt; color: blue; }
		a:hover {color: green; font-size: 20pt; font-weight: bold;}
		#LOG-IN{
		 font-size:26pt; font-weight: bold; 
		 background-color:yellow; height:150;  
		}
	</style>
	
	<script type="text/javascript">
	  var xhr; //전역변수 
	  
	  function first( ){
		return new XMLHttpRequest( );
	  }//end
	  
	  function two(){  
		var a=document.getElementById("userid").value; //myform.userid.value;
		var b=document.getElementById("pwd").value; //myform.pwd.value;
		xhr=first();
		xhr.onreadystatechange=display;
		xhr.open("GET", url, true);
		xhr.send();
	 }//end
	  
	  function display( ){
		 if(xhr.readyState==4){
			if(xhr.status==200){
			 var message=xhr.responseText;
			 document.getElementById("msg").innerHTML=message;
			}//200 end
		 }//4 end
	  }//end
	</script>
</head>
<body>
	
<div id="msg" align="center">	
	<table width="550" border="1" cellspacing="0">
	  <form name="myform"  method="post" action="gloginSave7.jsp">
		<tr>
			<td width=350> <b>userid: </b></td>
			<td> <input type="text" name="userid" id="userid" value=""></td>
			
			<td rowspan=3 align="center">
			 <input type="submit"  value="LOG-IN" id="LOG-IN" >
			</td>
		</tr>
		
		<tr>
			<td width=350><b>userpw: </b> </td>
			<td>
			  <input type="text"  name="pwd" id="pwd" value="">       
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
 				<a href="guestWrite.jsp">[등록]</a>
 				<a href="index.jsp">[index]</a>
 				<a href="guestList.jsp">[전체출력]</a>
			</td>
		</tr>
		</form>
	</table>
</div>

</body>
</html>

<%

//    SQL> create table login(
// 	     userid varchar2(10) primary key ,
// 	      pwd varchar2(10) not null
//     );

// 	SQL> commit ;
// 	SQL> insert into login values('sky', '1234') ;
// 	SQL> insert into login values('blue', '1234') ;
// 	SQL> commit ;
%>

