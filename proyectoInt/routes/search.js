var express = require('express');
var router = express.Router();
let searchController = require('../controllers/searchController')


router.get('/', searchController.index);

module.exports = router;