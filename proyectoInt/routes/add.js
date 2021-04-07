var express = require('express');
var router = express.Router();
let addController = require('../controllers/addController')


router.get('/', addController.index);

module.exports = router;