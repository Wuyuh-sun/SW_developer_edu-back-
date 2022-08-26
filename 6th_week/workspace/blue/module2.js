//module2.js문서작성 
exports.addPlus=function(a,b){
  console.log( a+"+"+b+"="+(a+b) );
}//end

exports.minus=function(a,b){ 
   console.log( `${a}-${b}=${a-b}` );
}//emd

//ES6표준기술표기
exports.multigob=(a,b)=>{ 
   console.log( `${a}*${b}=${a*b}`);
}//emd