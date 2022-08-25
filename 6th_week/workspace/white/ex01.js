//ex01.js문서작성 출력서식,변수,연산, __파일정보
cnt=345 ;
message='목요일점심'
student={name:'길동', age:22}
console.log('숫자출력 %d ' , cnt );
console.log('숫자출력 ' + cnt );
console.log('문자출력 %s ' , message);
console.log('json출력 %j ' , student);

var obj = {name:'이합격', cname:'웹서비스',subject:'NodeJs'};
//obj만 출력
console.log(obj);
console.dir(obj);

console.log('\n');
var num=1,hap=0;

//문제 1 2 3 4 5 6  7 8 9 10  합계=55
console.time('sum')
for(a=1 ; a<=30; a=a+1){
    console.log(num);
    num++;
    hap = hap + num;
}
console.timeEnd('sum')

console.log('hap=%d', hap);
//문제 현재문서파일출력, 폴더=디렉토리경로
console.log('현재문서파일명 '+ __filename );
console.log('현재폴더위치 '+ __dirname );