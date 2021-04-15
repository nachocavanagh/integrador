let autos = require("../modulos/index");

let indexController = {
    index: function (req, res, next) {
        res.render('index', { 
            autos: autos,
            logueado: true,
    });
    },
}

module.exports = indexController;