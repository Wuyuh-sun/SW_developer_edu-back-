var express = require('express');
var router = express.Router();

/* GET imagesearch page. */    
router.get('/', function(req, res, next) {
  res.render('imagesearch', { title: 'snow man imagesearch' });
});

module.exports = router;
