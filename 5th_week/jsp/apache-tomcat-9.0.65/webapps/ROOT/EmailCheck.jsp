<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>

<%
    String emailValue = request.getParameter("email");
    System.out.println("2단계 이메일 중복체크: " + emailValue);
    String sqlQuery;
    boolean emailCheckState;
    sqlQuery = "select * from yunBbsUser where email =?";
    PST=CN.prepareStatement(sqlQuery);
    PST.setString(1, emailValue);
    RS=PST.executeQuery();
    if(RS.next()==true){
        emailCheckState = true;
        out.println(emailCheckState);
    } else{
        emailCheckState = false;
        out.println(emailCheckState);
    }
    PST.close();
	CN.close();
%>
