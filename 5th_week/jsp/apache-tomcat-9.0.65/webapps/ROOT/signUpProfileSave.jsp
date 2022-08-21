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

    String signUpEmail = mr.getParameter("signUpEmail");
    String signUpPassword = mr.getParameter("signUpPassword");
    String signUpName = mr.getParameter("signUpName");
    String signUpProfileFile = mr.getFilesystemName("signUpProfileFile");

    String sqlQuery;
    
    boolean signUpCheckState;

    //HttpSession session = request.getSession();

    System.out.println("가입 email: " + signUpEmail);
    System.out.println("가입 password: " + signUpPassword);
    System.out.println("가입 name: " + signUpName);
    System.out.println("가입 ProfileFile: " + signUpProfileFile);

    sqlQuery = "insert into yunBbsUser (email, pw, name, profileimg) values (?, ?, ?, ?)";
    PST=CN.prepareStatement(sqlQuery);
    PST.setString(1, signUpEmail);
    PST.setString(2, signUpPassword);
    PST.setString(3, signUpName);
    PST.setString(4, signUpProfileFile);
    PST.executeUpdate();
    System.out.println("회원가입 성공");

    signUpCheckState = true;
    System.out.println(signUpCheckState);

    session.setAttribute("loginEmail", signUpEmail);

%>