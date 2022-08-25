//ex05.js문서작성 

//fs=File System모듈
//동기처리
var fs = require('fs');
console.log('#1.--------------------------------------------');
var data=fs.readFileSync("readme.txt", "utf-8");
console.log(data);
console.log('*2.--------------------------------------------*');
console.log('#3.--------------------------------------------');
console.log('마지막문장 4:02  4:09');

