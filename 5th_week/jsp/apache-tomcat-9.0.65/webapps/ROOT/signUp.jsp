<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>

<%
    String email = request.getParameter("email");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String profileImg = "profile.png";

    String sqlQuery;

    boolean signUpCheckState;

    System.out.println("3단계 email: " + email);
    System.out.println("3단계 pw: " + pw);
    System.out.println("3단계 name: " + name);
    
    sqlQuery = "insert into yunBbsUser (email, pw, name, profileimg) values (?, ?, ?, ?)";
    PST=CN.prepareStatement(sqlQuery);
    PST.setString(1, email);
    PST.setString(2, pw);
    PST.setString(3, name);
    PST.setString(4, profileImg);
    PST.executeUpdate();
    System.out.println("회원가입 성공");
    
    

    PST.close();
	CN.close();
%>