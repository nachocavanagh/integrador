var express = require("express");
var router = express.router();
const db = require("../database/models");


router.get('/demo', function(req, res) {
    let usuario = db.Usuario.findAll()
    .then((resultados) => {
        res.send(resultados);
    })
    .catch((error) => {
        res.send(error)
    })
}

module.exports = router;
