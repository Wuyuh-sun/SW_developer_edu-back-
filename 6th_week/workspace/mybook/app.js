var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var testRouter = require('./routes/test');
var snowRouter = require('./routes/snow')
var todoRouter = require('./routes/todo')

var app = express();

//npm install body-parser --save  설치
var bodyParser = require('body-parser');   //추가
app.use(bodyParser.urlencoded({ extended: true }));  //추가

/*
var toDoLists = ["플젝하기"]
app.get('/todo', function(req, res) {
  res.render('todo', {toDoListTitle: '할일갯수:' + toDoLists.length, toDoLists:toDoLists});
});

app.post('/add_list', function(req, res){
  var newContent = req.body.content;  
  console.log(newContent+' 추가');
  toDoLists.push(newContent);
  res.redirect('/todo');
})
*/

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/cake', testRouter);
app.use('/snow', snowRouter);
app.use('/todo', todoRouter);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
