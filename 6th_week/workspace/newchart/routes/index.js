var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: '수요일 index' });
  //res.send('<h1><font color=blue>hello Go GilDong 고길동</font></h1>');
});

module.exports = router;
