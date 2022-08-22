<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testWrite.jsp]</title>
 <style type="text/css">
    * { font-size:20pt;  }
    a { font-size:20pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}
    body{margin-left:10px;}
 </style>
 
 <script type="text/javascript">
   Gflag = false; //자바스크립트 전역변수 
 
   function nullCheck(){
	  dcode = document.myform.code.value;
	  dtitle = document.myform.title.value;
	  dpay = document.myform.pay.value;
	  if(dcode==null || dcode==""){
		  alert("code데이터 공백입니다");
		  myform.code.focus();
		  return false;
	  }else{myform.title.focus();}
	  
	  if(dtitle==null || dtitle==""){
		  alert("title데이터 공백입니다");
		  myform.title.focus();
		  return false;
	  }else{myform.pay.focus();}
	  
	  if(dpay==null || dpay==""){
		  alert("pay데이터 공백입니다");
		  myform.pay.focus();
		  return false;
	  }
	  
	  //code,title,pay데이터가 정상적으로 입력이 되면
	  //document.myform.submit();
	  //전역변수 Gflag체크해야죠
	  if(Gflag==false){
       alert("아이디=코드 중복체크를 하셔야 합니다");
      }else if(Gflag==true){ document.myform.submit();}
   }//end
   
   function codeCheck(){
	  dcode = document.myform.code.value;
	  if(dcode==null || dcode==""){
		  alert("중복코드체크 code데이터 공백입니다");
		  myform.code.focus();
		  return false;
	  }
	  Gflag=true;
	  window.open("openID.jsp?idx="+dcode, "bb", "width=500,height=150,left=550,top=200");
   }//end
   
   function payNumber(){
	  //onkeyup="payNumber();"
 	   var dpay=myform.pay.value;   //72a입력
 	   var size=myform.pay.value.length;
 	    for(var i=0; i<size; i++){
	 	   if(dpay.charAt(i)<'0' || dpay.charAt(i)>'9'){
	 	      alert("정확한 숫자를 입력하세요");
	 	      myform.pay.value=dpay.substring(0,i); //권장
	 	      //myform.pay.value=dpay.substr(0,i);
	 	      myform.pay.focus();
	 	    }
 	    }//for end
 	}//end
 	
 	function firstFocus(){
 		document.myform.code.focus();
 	}//end
 </script>
</head>
<body onLoad="firstFocus()">
  <h2>testWrite.jsp</h2>
  
  <form name="myform" method="get"  action="testWriteSave.jsp">
    코드: <input type="text" name="code" id="code" size="6">
         <input type="button"  onClick="codeCheck();"  value="code중복체크"> <br>
    제목: <input type="text" name="title" id="title"> <br>
    급여: <input type="text"  onkeyup="payNumber();"  name="pay" id="pay" > <br>
         <input type="button" onClick="nullCheck();" value="버튼데이터저장"> &nbsp;
         <input type="submit" value="서브밋저장"> 
         <input type="reset" value="입력취소"> 
  </form>
  
  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>







