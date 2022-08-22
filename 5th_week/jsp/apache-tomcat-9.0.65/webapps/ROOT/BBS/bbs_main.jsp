<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
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
    <div class="bbsTitle" id="bbsTitle">
        Welcome Yunha's BBS
    </div>
    <div class="board">
        <div class="topBoard">
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
                            <small>Log-out</small>
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
                <div class="bbsState">전체 게시판</div>
                <ul>
                    <li>
                        <div>1</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>2022-10-10</div>
                    </li>
                    <li>
                        <div>2</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>3</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>4</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>5</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>6</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>7</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>8</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>9</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>10</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>11</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>12</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>13</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                    <li>
                        <div>14</div>
                        <div>title<span>picture</span><span>comm</span></div>
                        <div>author</div>
                        <div>date</div>
                    </li>
                </ul>
            </div>        
        </div>

        <form action="">
            <div class="search">
            <label for="searchInput">검색조건</label>
            <select name="select">
                <option value="title">제목</option>
                <option value="author">글쓴이</option>
            </select>
            <input type="text" id="searchInput" name="searchInput" placeholder="검색할 내용을 입력한 후 ENTER키를 입력하세요">
            <input type="submit" value="검색">
            </div>
        </form>

        <div class="bbsView">
            
        </div>

        <div class="write">
        
        </div>

    </div>

    <div class="navbar">
        <ul>
            <li onclick="window.scrollTo({top: 1900, behavior: 'smooth',})"><span class="material-symbols-outlined">edit_square</span></li>
            <li onclick="window.scrollTo({top: 400, behavior: 'smooth',})"><span class="material-symbols-outlined">search</span></li>
            <li onclick="location.href='../index.jsp'"><span class="material-symbols-outlined">home</span></li>
            <li><span class="material-symbols-outlined">notifications</span></li>
            <li onclick="window.scrollTo({top: 0, behavior: 'smooth',})"><span class="material-symbols-outlined">arrow_circle_up</span></li>
        </ul>
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

    <div class="footer">
        
    </div>
</body>
</html>