<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestList페이징.jsp]</title>
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

 pnum =  request.getParameter("pageNum"); //처음실행하면 넘어오는 pageNum값이 없어서 에러발생
 if(pnum==null || pnum=="" || pnum.equals("")){ pnum="1";}
 pageNUM = Integer.parseInt(pnum); //숫자로변신
 rowstart = (pageNUM-1)*10+1 ;
 rowend = pageNUM * 10 ;
 
 if(total%10==0){ pagecount=(total/10); }
 else{ pagecount=(total/10)+1; }
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
<h2>guestList페이징.jsp</h2>
<table border="1" width="1000" cellspacing="0">
   <tr align="right">
      <td colspan="6">
           <a href="index.jsp">[index]</a>
           <a href="guestList.jsp">[guestList]</a> &nbsp;
    	    데이터갯수 : <%= total %> &nbsp;&nbsp;
      </td>
   </tr>
 
   <tr bgcolor="yellow" height="50">
     <td>행번호</td> <td>사 번</td> <td>이 름</td> <td>제 목</td>  <td>메 일</td> <td>급 여</td>
   </tr>
   
<%
 //msg="select rownum rn, g.* from guest g " ;
 //msg="select * from ( select rownum rn, g.* from guest g ) where rn between 1 and 10" ;
 
 String a= "select * from ( ";
 String b= "select rownum rn, g.* from guest g";
 String y= "";
 String c= " ) where rn  between " + rowstart  + " and " + rowend ;
 msg=a+b+c;
 System.out.println( c );
 
 ST = CN.createStatement(); 
 RS = ST.executeQuery(msg); 
 while(RS.next()==true){

%>
  <tr>
     <td> <%= RS.getInt("rn") %> </td>
     <td> <%= RS.getInt("sabun") %> </td>
     <td> <%= RS.getString("name") %>  </td>
     <td> <%= RS.getString("title") %>   </td>
     <td> <%= RS.getString("email") %>   </td> 
     <td> <%= RS.getInt("pay") %> </td>
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
              out.println("<a href=guestList.jsp?pageNum="+i+">["+i+"]</a>");
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
        <select>
           <option>---검색대상선택---</option>
           <option>이름검색</option>
           <input type=text size=8>
           <input type="submit" value="검색">
        </select>  
     </form>
    </td>
  </tr>
</table>  

  <p><br><br><br>

</body>
</html>







