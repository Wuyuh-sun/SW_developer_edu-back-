//ex04.js문서작성 

//fs=File System모듈
//비동기처리
var fs = require('fs');
console.log('#1.--------------------------------------------');
fs.readFile("readme.txt", "utf-8", function(err,data){
    if(err) throw err ;
   console.log(data);
   console.log('*2.--------------------------------------------*');
});
console.log('#3.--------------------------------------------');
console.log('마지막문장 4:02');

