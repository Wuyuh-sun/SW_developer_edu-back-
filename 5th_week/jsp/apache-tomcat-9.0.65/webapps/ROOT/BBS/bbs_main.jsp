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
<%
    sqlQuery = "select * from yunBbsUser where email =?";
    PST=CN.prepareStatement(sqlQuery);
    PST.setString(1, loginUserEmail);
    RS=PST.executeQuery();
    while(RS.next()){
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
                
                <%if(session.getAttribute("loginEmail") != null){%>
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
            <input type="text" id="searchInput" name="searchInput" placeholder="검색할 내용을 입력한 후 ENTER키를 입력하세요" autocomplete="off">
            <input type="submit" value="검색">
            </div>
        </form>

        <div class="bbsView">
            
            <div class="viewBorder">
                <div class="viewHeader">
                    <%-- <div class="authorProfile">
                        <img src="../storage/<%=RS.getString("profileimg")%>">
                    </div> --%>
                    <table cellspacing="1">
                        <thead class="thead">
                            <tr>
                                <th rowspan="2" class="profileImg"><img src="../storage/이준호.jpg"></th>
                                <th>글 번호</th>
                                <th style="width: 250px;">제목</th>
                                <th>글쓴이</th>
                                <th>날짜</th>
                                <td style="background-color: silver; cursor:pointer;">수정</td>
                            </tr>
                            <tr>
                                <td>0</td>
                                <td>title</td>
                                <td>author</td>
                                <td>2022-08-23</td>
                                <td style="background-color: silver; cursor:pointer;">삭제</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan = "6">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nihil placeat voluptatum magnam fugiat possimus sequi, sint ex saepe adipisci ducimus rerum laborum aliquid fugit eveniet illo, fuga aperiam eos.
                                    Repellendus repudiandae quidem amet ducimus quae nostrum vel ex quo laudantium odio quaerat laborum, eos cupiditate. Doloribus dolor, dignissimos dicta est dolorum quam deserunt alias veritatis nisi suscipit corrupti neque?
                                    Iste eligendi, pariatur sunt cupiditate deleniti porro perferendis eius, culpa obcaecati dicta voluptatem deserunt consequuntur? Quia, quae nihil nulla soluta laborum sit? Dignissimos quisquam esse tempore eum reiciendis aliquam delectus.
                                    Accusantium facere, nostrum, harum enim commodi sint expedita repudiandae, aut recusandae delectus voluptate nulla ipsam. Vero quis nobis vitae quidem nostrum repellendus excepturi, aut exercitationem ut eveniet modi, incidunt consectetur.
                                    Quas sed, ratione natus fugiat earum voluptas magnam facilis consequuntur sit quibusdam at rerum ea voluptate, ipsum voluptatum aliquam voluptatem inventore nostrum laboriosam vel. Pariatur voluptatibus itaque reprehenderit eius impedit?
                                    Repellat esse molestias expedita debitis in sequi sit, eaque accusamus aperiam aliquid at, quos nam! Minus nostrum labore nam eius blanditiis accusantium sunt pariatur dolores quae obcaecati, iure cum quam.
                                    Animi, placeat veritatis! Odio, facilis eius veritatis rem adipisci consequuntur harum accusantium quos tempora a voluptas, eum repellendus quod cumque optio delectus. Ipsam dolorum cum debitis temporibus reprehenderit aspernatur sit.
                                    Rerum architecto, corporis magnam beatae, voluptatibus sint at ratione quia omnis error eligendi qui ullam voluptate nemo eveniet, corrupti et fugit unde modi aliquam? Doloribus repudiandae odit deleniti inventore alias?
                                    Sunt animi ullam porro beatae nihil. Voluptatum distinctio, nostrum quos laudantium reiciendis sunt doloremque exercitationem expedita nihil atque illo aliquam amet, eveniet aliquid non debitis dicta. Quibusdam nihil illum deleniti.
                                    Eaque voluptatibus perspiciatis blanditiis magni, voluptates veritatis consectetur quo ab quasi qui deleniti commodi repellendus odit consequatur a! Dolor corporis fuga deserunt voluptas. Velit inventore doloribus atque error! Fugit, ducimus.
                                    Corporis, consequuntur optio. Vero, accusantium earum qui dolores accusamus dolorum optio perspiciatis nihil, voluptates unde illo, sequi officia nulla natus iure laboriosam eius nobis blanditiis. Perspiciatis, aperiam? Dignissimos, cumque facilis?
                                    Quod reiciendis culpa quos commodi aperiam delectus totam quo, fugit exercitationem molestias laboriosam beatae dolore, neque nostrum eaque libero quisquam nemo odit esse. Nobis sit odit voluptatibus veritatis consectetur eveniet?
                                    Ducimus, aliquid sunt facilis aliquam qui, obcaecati nulla perspiciatis doloremque repudiandae, laboriosam excepturi. Repellat accusantium atque dolor, blanditiis vel odio recusandae quasi architecto sed, facilis, cupiditate hic! Vero, necessitatibus eaque?
                                    Beatae at nesciunt labore facilis provident odit, aut repudiandae quia vel corporis asperiores minima expedita assumenda fuga quod cupiditate maiores sapiente animi! Nam dignissimos necessitatibus nemo fuga minima natus doloremque?
                                    Sed voluptates nulla eveniet qui soluta eum voluptatum deleniti fugiat commodi, quisquam reprehenderit facilis perspiciatis vitae nesciunt rerum alias repellendus maxime nemo harum accusantium? Voluptatibus non quidem corporis dolore nemo.
                                    Ab placeat voluptatem enim vero exercitationem alias maiores iure esse temporibus facere nisi minus facilis, ut similique repellendus? Nisi eius dolores veritatis est quasi qui dolorum voluptatibus tempore, rem unde.
                                    Nobis quae a voluptatem natus? Libero voluptatum maxime dolores ab non sapiente similique corporis, nostrum ducimus impedit! Voluptatibus, itaque dolorem vel fuga facere rerum error tempora exercitationem quo commodi neque!
                                    Nostrum sunt cum perspiciatis quisquam reprehenderit. Eos voluptate voluptatum culpa tempore doloribus illo corporis, nam id illum sint obcaecati accusantium aut consequuntur neque praesentium alias dolore quibusdam? Illum, quasi ad?
                                    Labore numquam eos fugiat sint facere, vitae dolorem eius sunt impedit. Harum perspiciatis debitis vel magni sint adipisci culpa. Asperiores nemo eligendi cum a impedit adipisci, nihil possimus obcaecati commodi?
                                    Consequatur corrupti eligendi nulla ut laboriosam, impedit dolorem odio, iure distinctio cumque asperiores eaque at dolores officiis, mollitia quidem voluptatum aliquam? Optio minus dolore tenetur aperiam a iusto architecto voluptatum.
                                    Quam beatae qui, minus dignissimos magni asperiores inventore, ipsum hic iste quod iusto aspernatur. Unde beatae, laboriosam repellendus eaque quos culpa soluta, ipsam, eos autem officia possimus mollitia iste vitae?
                                    Repudiandae perferendis voluptas cupiditate, nesciunt voluptates eligendi laudantium, dolorem temporibus hic incidunt reprehenderit nostrum fugiat sit optio, at doloremque delectus? Recusandae odit inventore ea esse architecto beatae quibusdam dicta mollitia.
                                    Officia laborum fugiat ad asperiores ea ratione voluptatibus. Quos beatae recusandae quibusdam illum excepturi! Neque, sapiente quas ex minima nesciunt veniam vitae impedit necessitatibus tempore doloremque molestiae, enim est voluptatibus.
                                    Voluptates sunt sit esse placeat modi iusto inventore alias qui doloribus laboriosam ducimus beatae dolores hic atque, voluptas pariatur autem nihil quidem distinctio exercitationem quod! Dicta omnis quis rerum error?
                                    Corporis a delectus numquam harum quaerat quasi accusamus! Rem, neque odio eligendi eveniet consequuntur tempora voluptatem voluptate labore velit numquam quibusdam deserunt nesciunt, dolorum, modi odit voluptas? Dolor, impedit in?
                                    Nulla illum sapiente voluptatibus aspernatur inventore eos eum, nesciunt ea, eaque optio totam est temporibus rem praesentium quod veniam quae corrupti laborum nisi qui itaque officia distinctio minus at. Fuga?
                                    Beatae praesentium doloremque similique sed maxime porro! Quae sunt nesciunt numquam mollitia saepe dicta, magnam, obcaecati corporis veritatis eum recusandae nemo dolor explicabo, assumenda quas atque odio dolorem asperiores voluptates?
                                    Recusandae quae soluta blanditiis repellendus dolor quo necessitatibus quos, at facere natus laborum voluptatem minima! Tenetur non, reiciendis molestias rerum veniam aperiam ratione mollitia velit placeat corrupti, ex sapiente deserunt!
                                    Repudiandae molestias ullam vel vero error animi nam exercitationem porro, modi ex assumenda natus voluptatem, nesciunt molestiae nobis pariatur velit quibusdam aperiam autem quo fugit enim. Officiis labore aperiam tenetur?
                                    Perferendis corporis facere deserunt quod, sed odio illum autem consequuntur sapiente sit assumenda repudiandae atque blanditiis ab eos nostrum nihil, vitae eius rerum mollitia illo eaque exercitationem. Ducimus, molestias ab.
                                    Ea, error autem! Alias praesentium, numquam architecto amet fugiat animi sit necessitatibus repellat aliquam totam quibusdam officia at recusandae eius facere quia vel doloribus cum. Temporibus et adipisci laudantium pariatur.
                                    Molestiae incidunt minima eligendi dolor. Consectetur est doloribus labore maiores ex esse inventore perferendis ullam omnis autem. Pariatur quam, numquam iure commodi debitis omnis vero, voluptate odit eius, mollitia nesciunt.
                                    A laudantium molestiae cupiditate tempore atque dignissimos vitae officiis recusandae corrupti dolore, mollitia, culpa aliquid tenetur provident corporis labore reprehenderit amet? Exercitationem enim commodi maxime autem sapiente eius eum nemo?
                                    Non facere autem veritatis deserunt suscipit necessitatibus rem iste quasi alias a nobis ea, modi, aliquid debitis numquam placeat assumenda. Nemo nostrum dolor ut quas animi deleniti unde magnam totam.
                                    Perspiciatis obcaecati laboriosam cum optio deserunt minus, enim corrupti? Officia nesciunt ipsam vel excepturi earum neque deserunt fugit architecto iste nulla, expedita velit pariatur repellendus rem voluptas reiciendis quae nam!
                                    Modi voluptates a quis voluptate sit nihil cumque quisquam consectetur laudantium. Dolores consequatur nam corporis quisquam, esse, pariatur laboriosam maiores odit iste eos, neque fuga deleniti voluptatem? Veritatis, nam iste?
                                    Accusamus dolorum rerum facilis! Aut, ipsa voluptatum, doloremque incidunt aliquid error magni fugiat dignissimos optio maiores sunt beatae ab nam deleniti enim corporis. Quasi, dolorem! Dolore vitae earum molestias alias!
                                    Pariatur, architecto repellendus. Iure magnam ipsum temporibus minus? Quos et aliquam officiis debitis! Reiciendis omnis dolorem dicta a consectetur aliquid expedita ipsa veniam, ducimus accusantium, eius cumque dolor, voluptas mollitia?
                                    Enim mollitia magnam aliquam repellat doloremque natus sint, sit praesentium voluptatum a numquam exercitationem accusamus voluptatibus? Illo enim dolor quam consectetur neque ducimus inventore adipisci fugit, facilis sint quisquam hic.
                                    Cupiditate temporibus iste libero ipsum expedita placeat dolor! Consequuntur similique quasi, ipsa consequatur in vitae fugiat pariatur nam temporibus reiciendis tenetur ratione a quidem nobis nostrum natus perferendis illo recusandae?
                                    Eum, vitae laudantium? Officiis inventore excepturi, esse sed omnis voluptate ea laborum vitae odit officia sapiente, deserunt aliquam illum nihil fuga obcaecati asperiores pariatur sunt? Velit hic molestiae harum accusamus?
                                    Veritatis perferendis neque, voluptas facilis aliquam atque repudiandae sunt ipsa consectetur unde corporis error ipsum earum perspiciatis veniam alias mollitia nisi iure ab similique sint architecto laborum. Optio, sed dolore?
                                    Laborum iusto odio assumenda distinctio maiores quod, voluptate aspernatur quia sed quam alias placeat nisi eum. Assumenda neque cupiditate iure esse, odio perspiciatis numquam harum aut, repellendus culpa ea similique.
                                    Qui officiis tempora eaque, magnam quam beatae blanditiis, at voluptatum aut sapiente corrupti amet. Assumenda exercitationem quos consequuntur veritatis. Totam quae et fuga voluptatum magni. Sequi aspernatur hic ipsa fuga?
                                    Pariatur praesentium minima optio eos numquam sapiente perspiciatis illum deleniti, deserunt, repellendus aliquid quos quisquam odit aspernatur illo architecto ipsa reiciendis asperiores itaque nostrum perferendis! Nesciunt sapiente debitis voluptate ab!
                                    Cum cupiditate est dolorum dignissimos pariatur aspernatur perspiciatis. Officia fugit voluptatum alias sed accusamus facilis pariatur itaque sint aliquid quos qui veniam illo quibusdam, ab ex dignissimos doloribus tempora quidem?
                                    Laudantium accusamus nostrum, numquam doloremque facere, vitae minus culpa earum corporis fugiat suscipit dicta quos nisi. Adipisci dolores sit, et porro debitis incidunt! Totam maxime voluptates eveniet saepe iste nostrum.
                                    Illo, architecto iste? Omnis dolor praesentium, consectetur eveniet ratione nam, quis et modi dignissimos nulla consequuntur labore amet voluptates dicta provident, molestiae quaerat. Quas repellat molestias consectetur at cupiditate. Ut.
                                    Corporis aperiam iure dolorum vitae possimus voluptatum nostrum non dolores ratione reprehenderit atque nulla magnam quasi harum quae tenetur asperiores voluptate sunt rerum perspiciatis consequatur, optio deserunt a. Molestiae, iusto.
                                    Autem delectus sit ipsum maiores aut a sunt ad ut sapiente eius vero alias obcaecati veritatis doloremque quae nulla, voluptatibus quos tempora perferendis impedit aliquam exercitationem? Nesciunt ut aperiam laboriosam!
                                    <br>
                                    <img src="../storage/우영우.jpg" style="max-width:950px; max-height:500px;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="write">
            <div class="writeForm">
                <form action="">
                    <label for="title">제목: </label>
                    <input type="text" name="title" id="title" placeholder="제목을 입력하세요">
                    <hr>
                    <label for="file">사진: </label>
                    <input type="file" name="file" id="file">
                    <hr>
                    <label for="content">내용</label>
                    <hr>
                    <textarea name="content" id="content"></textarea>
                    <input type="submit" value="글 등록">
                </form>
            </div>
        </div>

    </div>

    <div class="navbar">
        <ul>
            <li onclick="window.scrollTo({top: 1900, behavior: 'smooth',})"><span class="material-symbols-outlined">edit_square</span></li>
            <li onclick="window.scrollTo({top: 400, behavior: 'smooth',})"><span class="material-symbols-outlined">search</span></li>
            <li onclick="location.href='../index.jsp'"><span class="material-symbols-outlined">home</span></li>
            <li onclick="window.scrollTo({top: 0, behavior: 'smooth',})"><span class="material-symbols-outlined">arrow_circle_up</span></li>
            <li onclick="window.scrollTo({top: 3000, behavior: 'smooth',})"><span class="material-symbols-outlined">favorite</span></li>
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
        <div class="footh">
            Kyungil University - Department of Computer Engineering
            <br>
            Made by. Woo yun ha 
        </div>
        <div class="footb">
            <div class="sheepIcon"></div>
            <div class="sheepIcon2"></div>
            <div class="sheepIcon3"></div>
            <div class="sheepIcon4"></div>
        </div>
    </div>
  
</body>
</html>
<%}%>