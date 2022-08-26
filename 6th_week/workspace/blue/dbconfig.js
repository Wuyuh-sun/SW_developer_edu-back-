module.exports = {
    user          :"system",
    password      : "1234",
    connectString : "localhost",
    externalAuth  : false
};

// Class.forName("oracle.jdbc.driver.OracleDriver");
// String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
// CN=DriverManager.getConnection(url, "system", "1234");





// mysql데이터베이스접근
// var mysql=require('mysql');
// var conn=mysql.createConnection({
// 	host:'localhost',
// 	user:'root',
// 	password:'1234',
// 	database: 'kakao'
// });
// conn.connect();