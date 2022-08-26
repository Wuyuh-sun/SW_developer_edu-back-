
//npm install oracledb
const oracledb = require('oracledb');
const dbConfig = require("./dbconfig.js");
oracledb.initOracleClient({ libDir: 'C:\\workspace\\instantclient_21_6' });		

//console.log(dbConfig);

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
		console.log(reslut.rows[i]);
	}
    await connection.close();
}
//selectDatabase(); //전체출력



//console.log('*한건출력');
async function selectDatabase2() {
    let connection = await oracledb.getConnection(dbConfig);
    let binds = {};
    let options = {
        outFormat: oracledb.OUT_FORMAT_OBJECT  
      };

    let result = await connection.execute("select * from test where code = :code", [5567], options);
	console.log(result.rows);
	for(var i=0;i<result.rows; i++){
		console.log(reslut.rows[i]);
	}
    await connection.close();
}
//selectDatabase2(); //한건처리함수호출



// var oracledb = require('oracledb');
// var dbConfig = require("./dbconfig.js");
// var express = require('express')
//   , http = require('http')
//   , path = require('path');

// var app = express(); // 익스프레스 객체 생성
// app.set('port', process.env.PORT || 3000);
// var bodyParser = require('body-parser'); // body-parser

// app.use(bodyParser.urlencoded({extended:true}));
// app.use(bodyParser.json());
// var router = express.Router(); // 라우터 객체 참조
// oracledb.autoCommit = true; // Oracle Auto Commit 설정

// 데이터 조회 처리
//router.post('/dbTestSelect', function(request, response){    
    oracledb.getConnection({
        user          :"system",
        password      : "1234",
        connectString : "localhost",
        externalAuth  : false
    },
    function(err, conn) {
        if (err) {
            console.error(err.message);
            return;
        }

        let msg = 'select * from  test';

        conn.execute(msg, [], function (err, result) {
            if (err) {
                console.error(err.message);
                doRelease(conn);
                return;
            }
            console.log(result.rows);                   // 데이터
            doRelease(conn, result.rows);         // Connection 해제
        });
    });    

    // DB 연결 해제
    function doRelease(conn, rowList) {
        conn.release(function (err) {
            if (err) {
                console.error(err.message);
            }
            // DB종료까지 모두 완료되었을 시 응답 데이터 반환
            console.log('list size: ' + rowList.length);
        });
    }
//});



//mysql데이터베이스 
// var mysql=require('mysql');
// var conn=mysql.createConnection({
// 	host:'localhost',
// 	user:'root',
// 	password:'123456',
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











