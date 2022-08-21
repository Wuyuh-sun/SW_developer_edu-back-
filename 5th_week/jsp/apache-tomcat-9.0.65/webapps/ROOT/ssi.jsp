<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%! //전역변수,전역함수
   //ssi.jsp문서는 단독실행가능합니다
   Connection CN; //DB서버연결정보,명령어생성할때 참조 
   Statement ST; //ST=CN.createStatement()
   PreparedStatement PST; //PST=CN.prepareStatment(sql)
   CallableStatement CS; //CS=CN.callableStatement(sql)
   ResultSet RS; //조회한결과를 RS기억  RS.next( )
%>
<%
   try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
    CN=DriverManager.getConnection(url,"system", "1234");
    System.out.println("1단계: db connect Success");
    }catch(Exception ex){
        out.println("db err");
    }
%>