<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%System.out.println("bbs_main 홈페이지");%>

<%
    String Email = request.getParameter("email");
    String Password = request.getParameter("password");
    System.out.println("Email: " + Email);
    System.out.println("Password: " + Password);
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: aquamarine;
        }
    </style>
    <title>Yunha's BBS</title>
</head>
<body>
    <a href="../index.html">index</a>
</body>
</html>