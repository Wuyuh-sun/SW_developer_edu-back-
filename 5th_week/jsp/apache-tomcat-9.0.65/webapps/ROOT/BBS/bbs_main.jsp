<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%System.out.println("bbs_main 홈페이지");%>
<%@ include file="../ssi.jsp" %>
<%
    String loginUserEmail = (String)session.getAttribute("loginEmail");
    String sqlQuery;

    String email;
    String pw;
    String name;
    String profileimg ;
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/bbs_main.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <title>Yunha's BBS</title>
</head>
<body>
    <div class="board">
        <div class="userBoard">
        <%
        sqlQuery = "select * from yunBbsUser where email =?";
        PST=CN.prepareStatement(sqlQuery);
        PST.setString(1, loginUserEmail);
        RS=PST.executeQuery();
        %>
        
        <%if(session.getAttribute("loginEmail") != null){%>
            <%while(RS.next()){%>
            <ul class="userBoard00">
                <li class="userBoard01">
                    <div class="img">
                        <img src="../storage/<%=RS.getString("profileimg")%>">
                    </div>
                    
                    <span class="material-symbols-outlined" onclick="userUpdate()">edit</span>
                </li>
                <hr>
                <li class="userBoard02">
                    <div>EMAIL</div>
                    <div><%=RS.getString("email")%></div>
                </li>
                <li class="userBoard03">
                    <div>NAME</div>
                    <div><%=RS.getString("name")%></div>
                </li>
                <li class="userBoard04">
                    <div class="logoutBox" onclick="logout(event)">
                        <span class="material-icons">power_settings_new</span>
                        <br>
                        <small>로그아웃</small>
                    </div>
                </li>
            </ul>
            <%}%>
            <script>
                function userUpdate(){
                    console.log("updateClick!");
                    
                }
                function logout(e){
                    fetch('../logout.jsp', {
                    }).then((res)=>{
                        location.reload();
                    });
                }
            </script>
        <%}%>

        
        </div>
        <div class="bbsBoard">
        
        </div>
    </div>
    
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
</body>
</html>