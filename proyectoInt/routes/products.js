var express = require('express');
var router = express.Router();
let productsController = require('../controllers/productsController')


router.get('/', productsController.index);

module.exports = router;