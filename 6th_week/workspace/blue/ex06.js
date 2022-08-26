//ex06.js문서작성  파일저장

//fs=File System모듈
var fs = require('fs');

msg="오늘은 목요일 간단한 파일처리";
//초간단저장 fs.writeFile("result.txt", msg, "utf-8");
fs.writeFile("result.txt", msg, "utf-8", function(err){
  if(err){
    console.log('파일쓰기작업중에 에러발생' + err.message);
    return ;
  }
});

console.log("result.txt 파일 저장 성공 ");

