const { request } = require('express');
var express = require('express');
const { response } = require('../app');
var router = express.Router();

const toDoLists = ["휴가중"]
router.get('/', function(req, res, next) {
  res.render('todo', {toDoListTitle: '할일갯수:' + toDoLists.length, toDoLists:toDoLists});
});

router.post('/add_list', function(req, res){
  var newContent = req.body.content;  
  console.log(newContent+' 추가');
  toDoLists.push(newContent);
  res.redirect('/todo'); 
})

  
module.exports = router;


