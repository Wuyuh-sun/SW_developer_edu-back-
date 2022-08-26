var http=require('http')
,fs=require('fs')
, path=require('path')
, static=require('serve-static')
, express=require('express')
, socketio=require('socket.io');

 
//C:~~> npm install  socket.io@2.3.0 --save  ===>우윤하꿀팁 
//C:~~> npm install socket.io --save         ===>최신버젼인듯 합니다 
var app=express();
app.use("/", static(path.join(__dirname,'public')));
app.get("/", function(req,res){
    fs.readFile('./public/mychat07.html',function(err, data){
        res.writeHead(200,{'Content-Type':'text/html; charset=utf8'});
        res.end(data);
    })
})


var server=http.createServer(app).listen(3333,function(){
    console.log('http://localhost:3333')
});


//소켓 서버 생성
var io=socketio.listen(server);

io.sockets.on('connection', function(socket){
    console.log("유저 접속함...");
    socket.on('hello', function(data){
        console.log("from client>>>"+data);
        //broadcast방식: 나를 제외한 클라이언트에게 보내보자.
        socket.broadcast.emit('sendBroad', data);
    })
})

