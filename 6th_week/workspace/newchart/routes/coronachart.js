var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('coronachart', { title: 'coronachart' });
});

module.exports = router;
