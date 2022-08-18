<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"> <!--모바일 반응형 지원 -->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>pizza.jsp</title>

<!--CDN 참조  -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style type="text/css">
	/* body,h2{
		font-family:돋움,돋움체,verdana;
		color:navy;
	} */
</style>

<script type="text/javascript">
	var req=false; //XMLHttpRequest객체 필요
	init=function(){
		//req객체 초기화
		//Ajax는 XMLHttpRequest객체를 생성하는 것이
		//첫 번째 단계다.
		try{
			req=new XMLHttpRequest();
			//JavaScript객체. HTTP요청을 수행하도록
			//하고, 서버로부터 응답받은 
			//내용(XML또는 JSON,TEXT,HTML 등)
			//을 파싱한다.
		}catch(e){
			try{
				//IE 6이하 버전일 경우
				req=new ActiveXObject("Msxml2.XMLHTTP");
			}catch(e2){
				req=false;
			}//catch
		}//catch
		if(!req) alert("req객체 생성 실패");
		//else alert("생성 성공");
	}//init-------------------

	getUserInfo=function(){
		//1. 사용자가 입력한 전화번호 받기
		var val=$('#phone').val();
		//alert(val);
		var url="pizzaResult.jsp?phone="+val;
		//2. 서버에 전화번호를 가지고 요청을 보내자.
		req.open("GET",url, true);
		//open(method, url [, async])
		//(전송방식,보내는곳,비동기방식 여부.)
		//true면 비동기방식. 디폴트임
		//false면 동기방식
		
		//3. 콜백함수 지정
		req.onreadystatechange=updatePage;
		/*onreadystatechange는 req의 속성으로
		콜백함수를 지정한다.
		요청을 전송하기 전에 반드시 위 코드가 기술
		되어야 한다. 콜백함수란?=>자동으로 호출해주는 함수
				정도로 이해하자.
		*/
		//4. 요청을 전송
		req.send(null);
		/* send(body);
		get방식 요청일 경우 null을 넘긴다.
		post방식일 경우 body부분에 전송할 문자열을
		지정해서 보낸다.
		*/
		
	}//---------------
	updatePage=function(){
		//alert(req.readyState+"/"+req.status);
		if(req.readyState==4 && req.status==200){
			//응답 성공이 왔다면
			var res=req.responseText;
			//      req.responseXML;
			//구분자 '|'를 기준으로 쪼개어 배열에 할당
			var data=res.split("|");
			//split('구분자') :구분자'|'를 기준으로
			//문자열을 쪼개어 배열형태로 반환한다.
			var mIdx=data[0];
			var mName=data[1];
			var mAddr=data[2];
			//alert(typeof mIdx);
			if(parseInt(mIdx)==0){
				//alert('비회원');
				$('#userInfo').html("");
				$('#userInfo').hide(1000);
				$('#nonUser').show(1000);
			}else{
				var str="<ul>";
				str+="<li>회원번호: "+mIdx+"</li>";
				str+="<li>회원이름: "+mName+"</li>";
				str+="<li>회원주소: "+mAddr+"</li>";
				str+="</ul>";
				$('#userInfo').html(str);
				$('#userInfo').show(1000);
				$('#nonUser').hide(1000);
			}
			
		}
		
	}
	
	window.onload=init;
</script>

</head>
<body>
<div class="section">
<div class="container">
	<h1>Pizza Order Page</h1>
	<form role="form" class="form-horizontal"  	name="orderF" id="orderF"   method="POST">
		<div class="form-group">
			<p class="text-info">
			<b>귀하의 전화번호를 입력하세요:</b>
			<input type="text" size="20" name="phone" id="phone" onchange="getUserInfo()"  class="form-control"/>
			</p>
			<p class="text-danger">
			<b>
				귀하가 주문하신 피자는 아래 주소로 배달됩니다.
			</b>	
			</p>
			<div id="userInfo"></div>
			<div id="address"></div>
			<!-- 비회원 입력 폼 : 비회원일 경우 주소입력 폼을 보여주자.-->
			<div id="nonUser" style="display:none;">
				주소: <input type="text" name="addr" id="addr"
						size="60" style="border:2px solid maroon;" class="form-control"/>
			</div>
			<!-- ------------------------------------------- -->
			<p class="text-info">
			<b>주문 내역을 아래에 기입하세요</b></p>
			<p>
				<textarea name="orderList"
				 id="orderList" rows="6" cols="50" class="form-control"></textarea>
			</p>
			<p>
				<input type="submit" value="Order Pizza" class="btn btn-primary"/>
			</p>
		</div>
	</form>
</div>
</div>
</body>
</html>

<!-- 

drop table pizza_user;
create table pizza_user(
	pnum number(8) primary key,
	name varchar2(20),
	phone varchar2(15) not null,
	addr varchar2(30) not null
);

drop sequence pizza_seq ;
create sequence pizza_seq ;

insert into pizza_user(pnum,name,phone,addr) 
values(pizza_seq.nextval,'고길동','111-1111','서울 소확구 블루동');

insert into pizza_user(pnum,name,phone,addr) 
values(pizza_seq.nextval,'둘리','222-2222','서울 은하구 레하동');
commit;
select * from  pizza_user;
commit;
 -->




