//module3.js문서작성 
var user = {
   userid: 'sky' ,
   pwd: '1234' ,
   info : function(){
    console.log(`아이디: ${userid}`);
    console.log(`이름: ${pwd}`);
   }
};

module.exports = user ;