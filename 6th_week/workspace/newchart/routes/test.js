var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  //res.send('test test');
  res.render('test', { title: 'title mytest 2:03' });
});

module.exports = router;
