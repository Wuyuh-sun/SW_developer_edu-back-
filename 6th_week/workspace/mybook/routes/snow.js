var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  //res.send('winter1 wind1 snow1');
  res.render('snow', { msg: 'winter2 wind2 snow2' });
  //res.render('test', { title: 'title mytest 2:03' });
});

module.exports = router;
