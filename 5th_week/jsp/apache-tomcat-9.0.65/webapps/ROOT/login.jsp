<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%
    String path = application.getRealPath("./storage");  

    int size = 1024*1024*1024 ;
    DefaultFileRenamePolicy dfr=new DefaultFileRenamePolicy();
    MultipartRequest mr=new MultipartRequest(request,path,size,"UTF-8");

    String loginEmail = mr.getParameter("loginEmail");
    String loginPassword = mr.getParameter("loginPassword");

    String sqlQuery;
    
    boolean loginCheckState;

    System.out.println(loginEmail);
    System.out.println(loginPassword);

    sqlQuery = "select * from yunBbsUser where email =? and pw =?";
    PST=CN.prepareStatement(sqlQuery);
    PST.setString(1, loginEmail);
    PST.setString(2, loginPassword);
    RS=PST.executeQuery();

    if(RS.next()==true){
        loginCheckState = true;
        out.println(loginCheckState);
        session.setAttribute("loginEmail", loginEmail);
    } else{
        loginCheckState = false;
        out.println(loginCheckState);
    }

    PST.close();
	CN.close();
%>