<%@ page language="java" 
    contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>
<%
    String loginUserEmail = (String)session.getAttribute("loginEmail");
    if(session.getAttribute("loginEmail") == null){
        out.println("<script>alert(\"접근할 수 없습니다.\");location.href=\"./index.jsp\";</script>");
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS/index.css">
    <title>Yunha's BBS</title>
</head>

<body>
    <div class="circle">
        <div class="logginArea">
            <div class="successMsgGrp">
                <div class="successMsg1">로그인 완료되었습니다.</div>
                <div class="successMsg2">게시판으로 이동 중입니다.</div>
                <hr>
                <div class="successMsg3">현재 로그인 계정 Email</div>
                <div class="successMsg4">-- <%=loginUserEmail%> --</div>
            </div>
        </div>
    </div>
    <div class="loadingBar"></div>

    <div class="area">
        <ul class="circles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <script>
        setTimeout(()=>{
            location.href = "./BBS/bbs_main.jsp";
        }, 5000);
    </script>
</body>

</html>