var express = require('express');
var router = express.Router();
let editController = require('../controllers/editController')


router.get('/', editController.index);

module.exports = router;