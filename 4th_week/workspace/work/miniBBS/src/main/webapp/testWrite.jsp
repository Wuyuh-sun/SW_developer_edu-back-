<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> testWrite.jsp </title>

 <style type="text/css">
   *{ font-size: 16pt;  }
   a{ font-size: 16pt; text-decoration: none; }
   a:hover{ font-size: 20pt; text-decoration: underline; }
 </style>
 
 <script type="text/javascript"> 
    Gflag=false; //전역변수
   
    function checkNull(){
        var a = document.myform.title.value; 
        if( a==null || a==""){
            alert("제목 데이터 공백입니다");
            myform.title.focus();
            return false;
        }else{ myform.pay.focus(); }
             
        if(Gflag==false){
           alert("id=아이디=제목=title 중복체크를 하셔야 합니다");
        }else if(Gflag==true){ document.myform.submit();}
     }// checkNull() end
    
	function idCheck(){
	  a = document.myform.title.value;
	  if(a==null || a==""){
	   alert("title데이터를 입력하세요");
	   myform.title.focus();
	   return  false;
	 }
	  open("openID.jsp?idx="+a, "bb", "width=700,height=170,left=550,top=200"); 
	  Gflag=true; //전역변수값 true
	}//idCheck() end  
	
	  function handleFileSelect(){
			var files = document.getElementById('file').files[0]; 
	   		var reader = new FileReader();  
	        //alert("파일명=" + files);       
	        reader.onload = (function(theFile) {
	          return function(e) {  
	          //원본 var img_view = ['<img src="', e.target.result, '" name="', escape(theFile.name),'"   width="400" height="200"  alt="tis" />'].join('');
	          var img_view = ['<img src=', e.target.result + '  width="400" height="200"  alt="tis" />'].join('');
	              document.getElementById('preview').innerHTML = img_view ;
	          };
	       })(files);
	     reader.readAsDataURL(files);    
	   }// handleFileSelect() end
 </script>
 
</head>
<body>
  <h2> testWrite.jsp </h2>
  <form name="myform"  action="testInsert.do"  method="post" enctype="multipart/form-data" >
      제목:  <input type="text" name="title"  size="10">
            <input type="button"  value="제목중복"> <br>
      급여:  <input type="text" name="pay" value="71">  <br>
      성별:  <input type="radio" name="gender" value="man" >남자
            <input type="radio" name="gender" value="woman" checked="checked">여자    <br>
      파일:  <input type="file" name="file1" id="file" onchange="handleFileSelect()"> <br>
            <input type="submit" value="서브밋mvc2서블릿" > &nbsp;
            <input type="reset" value="취소">  
  </form>
  
  <br>
  <div id="preview"></div>
  
  <p>
  <a href="testWrite.jsp">[testWrite]</a>
  <a href="testList.jsp">[testList]</a>
  <a href="index.jsp">[index]</a>
  <a href="login.jsp">[로그인]</a>
</body>
</html>







