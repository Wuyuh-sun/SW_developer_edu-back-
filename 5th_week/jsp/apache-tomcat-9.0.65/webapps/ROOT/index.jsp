<%@ page language="java" 
    contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>
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
        <div class="loadingArea">
            <h1 class="page-header">Yunha's BBS</h1>
            <div class="sheep"></div>
        </div>
        <div class="loginArea">
            <form action="../BBS/bbs_main.jsp" class="loginForm" method="post">
                <label for="email">E-MAIL</label>
                <br>
                <input type="email" name="email" id="email" placeholder="e-mail을 입력하세요" autocomplete="off" required>
                <br>
                <label for="password">PASSWORD</label>
                <br>
                <input type="password" name="password" id="password" placeholder="password을 입력하세요" required>
                <br>
                <input type="submit" value="LOG-IN">
                <hr>
            </form>
            <div class="signUpGrp">
                <small>회원가입이 안되어있나요?</small>
                <br>
                <button class="signUpBtn">SIGN-UP</button>
                <a href=""><small>로그인하지 않고 게시판 보기</small></a>
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

    <div class="signUpPath">
        <div class="signUpForm">
            <div class="signUpCloseBtn">X</div>
            <div class="elementCenter">
                <div class="signTitle">회원가입</div>
                <form action="" class="signUpFormTag">
                    <label for="signUpEmail">EMAIL</label>
                    <input type="button" class="emailCheck" value="중복체크" onclick="emailCheck(this)">
                    <br>
                    <input type="email" name="signUpEmail" id="signUpEmail" placeholder="EMAIL입력 후 중복체크를 해주세요(필수)" onkeyup="emailChange()" required>
                    <br>
                    <small class="errMsg1">※중복되는 Email이 있습니다.</small>
                    <small class="errMsg2">※Email형식에 맞게 작성해주세요.</small>
                    <small class="errMsg3">※사용가능한 Email입니다.</small>
                    <small class="errMsg4">※Email중복체크를 해주세요.</small>
                    <label for="signUpPassword">PASSWORD</label>
                    <br>
                    <input type="password" name="signUpPassword" id="signUpPassword" placeholder="가입할 PASSWORD를 입력하세요(필수)"  maxlength="20" required>
                    <br>
                    <label for="signUpName">NAME</label>
                    <br>
                    <input type="text" name="signUpName" id="signUpName" placeholder="가입할 NAME을 입력하세요(필수)" maxlength="10" required>
                    <br>
                    <label for="">PROFILE</label>
                    <br>
                    <div class="profileBorder"></div>
                    <div class="profileImgView">
                        <img src="" id="Img">
                    </div>
                    <br>
                    <input type="file" name="signUpProfileFile" class="signUpProfileFile">
                    <input type="submit" class="signUpSubmit" value="가입" onclick="signUpCheck(event)">
                </form>
            </div>
        </div>
    </div>
    <script>
        const loadingArea = document.querySelector(".loadingArea");
        const loginArea = document.querySelector(".loginArea");
        const loadingBar = document.querySelector(".loadingBar");
        const signUpBtn = document.querySelector(".signUpBtn");
        const signUpPath = document.querySelector(".signUpPath");
        const signUpForm = document.querySelector(".signUpForm");
        const signUpCloseBtn = document.querySelector(".signUpCloseBtn");
        const file = document.querySelector(".signUpProfileFile");
        const img = document.getElementById("Img");

        let emailValue = document.getElementById("signUpEmail");
        let passwordValue = document.getElementById("signUpPassword");
        let nameValue = document.getElementById("signUpName");

        let result = null;

        loadingArea.style.left = "0%";
        loginArea.style.left = "100%";

        // signUpPath.style.display = "none";
        // signUpForm.style.top = "150%";
        signUpPath.style.display = "block";
        signUpForm.style.top = "50%";

        window.addEventListener("load", () => {
            setTimeout(() => {
                loadingArea.style.left = "-103%";
                loginArea.style.left = "0%";
                loadingBar.style.animation = "none";
                loadingBar.style.background = "skyblue";
                loadingBar.style.transform = "translate(-50%, -50%)";
            }, 1000)
            setTimeout(() => {
                loginArea.style.borderRadius = "50%";
            }, 2000)
        })
        signUpBtn.addEventListener("click", () => {
            signUpPath.style.display = "block";
            setTimeout(() => {
                signUpForm.style.top = "50%";
            }, 100)
        })
        signUpCloseBtn.addEventListener("click", () => {
            signUpForm.style.top = "150%";
            setTimeout(() => {
                signUpPath.style.display = "none";
            }, 1500)
        })

        function readImage(input) {
            // 인풋 태그에 파일이 있는 경우
            if(input.files && input.files[0]) {

                // 이미지 파일인지 검사 (생략)

                // FileReader 인스턴스 생성
                const reader = new FileReader()

                // 이미지가 로드가 된 경우
                reader.onload = e => {
                    img.src = e.target.result;
                }

                // reader가 이미지 읽도록 하기
                reader.readAsDataURL(input.files[0])
                }
        }

        if(file.value == ""){
            img.src = "./IMG/profile.png";
        }
        file.addEventListener("change",(e)=>{
            readImage(e.target);
        })
        

        function errMsg(err1, err2, err3, err4){
            document.querySelector(".errMsg1").style.display = err1;
            document.querySelector(".errMsg2").style.display = err2;
            document.querySelector(".errMsg3").style.display = err3;
            document.querySelector(".errMsg4").style.display = err4;
        }

        function emailCheck(e) {
            if(emailValue.value != ""){
                if(emailValue.validationMessage != ""){
                    errMsg("none", "block", "none", "none");
                    emailValue.focus();
                    return false;
                }else{
                    errMsg("none", "none", "none", "none");
                    fetch('./EmailCheck.jsp', {
                    method: 'POST',
                    cache: 'no-cache',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: "email="+emailValue.value
                    })
                    .then((res)=>{
                        res.text().then((data)=>{
                            result = data.replace(/(\s*)/g, "");
                            console.log(result);
                            if(result == 'true'){
                                errMsg("block", "none", "none", "none");
                                emailValue.focus();
                                return false;
                            } else{
                                errMsg("none", "none", "block", "none");
                                emailValue.focus();
                                return false;
                            }
                        })
                    })
                }
            } else{
                errMsg("none", "block", "none", "none");
                emailValue.focus();
                return false;
            }
        }

        function emailChange(){
            result = 'true';
            errMsg("none", "none", "none", "block");
        }

        function signUpCheck(e){
            if(result == 'false' && passwordValue.value != "" && nameValue.value != ""){
                e.preventDefault();
                // alert("조건 충족");
                // fetch('./signUp.jsp', {
                //     method: 'POST',
                //     cache: 'no-cache',
                //     headers: {
                //         'Content-Type': 'application/x-www-form-urlencoded',
                //     },
                //     body: "email="+emailValue.value+"&pw="+passwordValue.value+"&name="+nameValue.value
                // }).then((res)=>{
                //     console.dir(res);
                // });

                const fileInput = document.querySelector('.signUpProfileFile');
                const formData = new FormData();

                formData.append('signUpEmail', emailValue.value);
                formData.append('signUpPassword', passwordValue.value);
                formData.append('signUpName', nameValue.value);
                formData.append('signUpProfileFile', fileInput.files[0]);
                
                fetch('./signUpProfileSave.jsp', {
                    method: 'POST',
                    headers:{},
                    body:formData
                }).then((res)=>{
                    res.text().then((data)=>{
                        location.href="./middleLogin.jsp";
                    })
                });
            } else{
                e.preventDefault();
                alert("가입 형식에 맞게 작성해주세요");
                console.dir(file);
                return false;
            }
        }
        
    </script>
</body>

</html>