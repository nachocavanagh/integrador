var express = require('express');
var router = express.Router();
let productsController = require('../controllers/productsController')


router.get('/:id', productsController.show);


module.exports = router;