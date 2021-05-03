var express = require('express');
var router = express.Router();
const db = require('../database/models');

router.get('/demo', function (req, res) {
    let usuario = db.Usuario.findAll()
        .then((data) => {
            res.send(data);
        })
        .catch((error) => {
            res.send(error)
        })
});

module.exports = router;
