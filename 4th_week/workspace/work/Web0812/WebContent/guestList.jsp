<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestList.jsp]</title>
 <style type="text/css">
    * {font-size:20pt;  }
    a {font-size:20pt;  text-decoration:none; color:black;}
    a:hover{font-size:24pt;  text-decoration:underline ; color:blue ;}
    body{margin-left:20px;}
 </style>
</head>
<body>
<p>
<%
 msg ="select count(*) as cnt from  guest " ;
 ST = CN.createStatement();
 RS = ST.executeQuery(msg);
 if(RS.next()==true){ total = RS.getInt("cnt");  }
%>

<%
 int rowstart=0, rowend=0 ;
 String pnum="" ;
 int pageNUM=1 ;
 int pagecount=0; //페이지갯수 32
 int tmp=0, startpage=1, endpage=10 ;
 
 String sqry; 
 String skey, sval; 
 String returnpage;

  skey = request.getParameter("keyfield"); //컬럼필드선택
  sval = request.getParameter("keyword");  //검색어입력
  
  //SQL> select * from guest where title like '%%' ; 전체출력
  //SQL> select * from guest where title like '%p%' ; 13건출력
  if(skey=="" || sval=="" || skey==null || sval==null || skey.equals("")){
	  skey = "";  sval = "";
	  sqry = " where title like '%%' " ;
  }else{ sqry=" where " + skey + " like '%"+ sval +"%'" ; }
  //System.out.println(sqry); //sqry변수를 어디서사용할까? 고민고민
  //http://localhost:8181/Web0812/guestList.jsp?keyfield=name&keyword=b 총62건
  //총62건에서 [3]클릭하면 http://localhost:8181/Web0812/guestList.jsp?pageNum=3&keyfield=name&keyword=b
  //&keyfield=name&keyword=b
  returnpage="&keyfield="+skey+"&keyword="+sval;
 
Smsg = "select count(*) as scnt from  guest " + sqry;	
ST = CN.createStatement();
RS = ST.executeQuery(Smsg);
if(RS.next()==true){ Stotal = RS.getInt("scnt");   } 
System.out.println("검색데이터건수 = "+ Stotal);
		  
 pnum =  request.getParameter("pageNum"); //처음실행하면 넘어오는 pageNum값이 없어서 에러발생
 if(pnum==null || pnum=="" || pnum.equals("")){ pnum="1";}
 pageNUM = Integer.parseInt(pnum); //숫자로변신
 rowstart = (pageNUM-1)*10+1 ;
 rowend = pageNUM * 10 ;
 
 if(Stotal%10==0){ pagecount=(Stotal/10); }
 else{ pagecount=(Stotal/10)+1; }
 //System.out.println("총페이지갯수=" + pagecount);
 
 //[11] ~ [pageNUM=17클릭] ~ [20] [다음]
 //rowstart=161 rowend=170	
 //startpage=11  endpage=20
 tmp = (pageNUM-1)%10;   //6
 startpage = (pageNUM-tmp) ; //17-6=11
 endpage = (startpage+9); //20
 //[이전] [31startpage] ~ [32]~[40][다음X]
 if(endpage>pagecount){ endpage=pagecount; }		 
%>


<p>
<h2>guestList.jsp</h2>
<table border="1" width="1000" cellspacing="0">
   <tr align="right">
      <td colspan="6">
           <a href="index.jsp">[index]</a>
           <a href="guestList.jsp">[guestList]</a> &nbsp;
    	    <%= Stotal %>조회건/<%= total %>전체건 &nbsp;&nbsp;
      </td>
   </tr>
 
   <tr bgcolor="yellow" height="50">
     <td>행번호</td> <td>사 번</td> <td>이 름</td> <td>제 목</td>  <td>메 일</td> <td>급 여</td>
   </tr>
   
<%
 //msg="select rownum rn, g.* from guest g " ;
 //msg="select * from ( select rownum rn, g.* from guest g ) where rn between 1 and 10" ;
 
 String a="select * from ( ";
 String b="select rownum rn, g.*, (select count(*) from  guestreply r where r.sabun=g.sabun) as rcnt from ";
 String y="( select * from guest " + sqry + ") g ";
 String c=") where rn  between " + rowstart  + " and " + rowend ;
 //msg=a+b+c;
 msg=a+b+y+c;
 System.out.println( y );
 
 ST = CN.createStatement(); 
 RS = ST.executeQuery(msg); 
 while(RS.next()==true){
   Rcnt = RS.getInt("rcnt");
   Gtitle = RS.getString("title");
   Gemail = RS.getString("email");
   Gpay = RS.getInt("pay") ;
%>
  <tr>
     <td> <%= RS.getInt("rn") %> </td>
     <td> <%= RS.getInt("sabun") %> </td>
     <td> <%= RS.getString("name") %>  </td>
     <td> <%= Gtitle %><%if(Rcnt>0){%><span style="color:red;font-weight:bold";>[<%=Rcnt %>]</span><%}%></td>
     <td> <%= RS.getString("email") %>   </td> 
     <td> <%= Gpay %> </td>
   </tr>
<% }//while end %>
  <tr align="center">
   <td colspan="6">
     <%
       //이전  [X]1~10[다음] [이전]11~20[다음]  [이전]21~30[다음]  [이전]31~  총페이지수pagecount=32
       //startpage  1~, 11~, 21~, 31~
       //if제어문으로 구현
        if(startpage>10){
    	 out.println("<a href=guestList.jsp?pageNum="+(startpage-10)+">[이전]</a>");   
        }
     
        for(int i=startpage; i<=endpage; i++){
        	if(i==pageNUM){
        	  out.println("<font style='font-size:24pt; color:blue'>["+i+"]</font>");
        	}else{
              out.println("<a href=guestList.jsp?pageNum="+i+returnpage+">["+i+"]</a>");
        	}
        }
     
       //다음 endpage 1~10  11~20  21~30  31~40  총페이지수pagecount=32
       //endpage  ~10, ~20, ~30, ~40		   
       if(endpage<pagecount){
    	 out.println("<a href=guestList.jsp?pageNum="+(startpage+10)+">[다음]</a>");
       }
     %> 
   </td>
  </tr>
  
  <tr align="center">
    <td colspan="6">
     <form action="guestList.jsp">
        <select name="keyfield" onchange="">
           <option value="">---검색대상선택---</option>
           <option value="name">이름검색</option>
           <option value="title">제목검색</option>
           <option value="">내용검색</option>
           <input type=text name="keyword"  size=8 value="">
           <input type="submit" value="검색">
        </select>  
     </form>
    </td>
  </tr>
</table>  

  <p><br><br><br>

</body>
</html>







