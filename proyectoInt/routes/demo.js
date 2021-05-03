var express = require('express');
var router = express.Router();
const db = require('../database/models');

router.get('/demo', function (req, res) {
    let usuario = db.Usuario.findAll()
        .then((data) => {
           return res.send(data);
        })
        .catch((error) => {
           return res.send(error)
        })
});

module.exports = router;
