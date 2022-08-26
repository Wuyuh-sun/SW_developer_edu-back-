
//첫번째 npm install oracledb
//두번째 dbconfig.js
//세번째 instantclient_21_6폴더가 필요 
const oracledb = require('oracledb');
const dbConfig = require("./dbconfig.js");
oracledb.initOracleClient({ libDir: 'C:\\workspace\\instantclient_21_6' });		

console.log(dbConfig);
console.log('오라클연결환경 성공 ');

// DB Select
async function selectDatabase() {
    let connection = await oracledb.getConnection(dbConfig);
    let binds = {};
    let options = {
        outFormat: oracledb.OUT_FORMAT_OBJECT  
      };

    let result = await connection.execute("select * from test", binds, options);
	console.log(result.rows);
	for(var i=0;i<result.rows; i++){
		console.log(result.rows[i]);
	}
    await connection.close();
}
//selectDatabase(); //전체출력



console.log('한건출력');
async function selectDatabase2() {
    let connection = await oracledb.getConnection(dbConfig);
    let options = {
        outFormat: oracledb.OUT_FORMAT_OBJECT  
      };

    let result = await connection.execute("select * from test where code = :code", [5567], options);
	console.log(result.rows);
	for(var i=0;i<result.rows; i++){
		console.log(result.rows[i]);
	}
    await connection.close();
}
//selectDatabase2(); //한건처리함수호출

//deleteDatabase( ); //한건삭제처리 


//mysql데이터베이스 
// var mysql=require('mysql');
// var conn=mysql.createConnection({
// 	host:'localhost',
// 	user:'root',
// 	password:'1234',
// 	database: 'test'
// });
// conn.connect();

/*
var msg="select * from test";
conn.query(msg, function(err, rows, fields){
	if(err){
		console.log(err);
	}else{
		//console.log('rows', rows);
		//console.log('fields', fields);
		for(var i=0; i<rows.length; i++){
			console.log(rows[i].title +"  "+rows[i].description);
		}
	}
});
*/

/*
//var msg="insert into test values('kim', 24, now(), 7700)";
//var msg="insert into test values('kim', 24, sysdate(), 7700)";
var msg="insert into test values(?, ?, sysdate(), ?)";
var params=['snow', 7, 9900];
conn.query(msg, params, function(err, rows, fields){
	if(err){
		console.log(err);
	}else{
		console.log(rows.insertId);
	}
});
*/

/*
var msg="update test set title=?, pay=?, wdate=sysdate() where code=?";
var params=['rain',9,2200];
conn.query(msg, params, function(err, rows, fields){
	if(err){
		console.log(err);
	}else{
		console.log(rows);
	}
});
*/

// var msg = "delete from test where code=?";
// var params=[1];
// conn.query(msg, params, function(err, rows, fields){
// 	if(err){
// 		console.log(err);
// 	}else{
// 		console.log(rows);
// 	}
// });

// conn.end();











