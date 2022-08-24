var express = require('express');
var router = express.Router();

/* 08-24-수요일 */  
router.get('/', function(req, res, next) {
  res.render('coronapicker', { title: 'coronapicker' });
});

module.exports = router;
