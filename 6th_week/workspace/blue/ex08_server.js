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

//mychat08.html문서 기술
