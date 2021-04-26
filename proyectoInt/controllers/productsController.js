let autos =require("../modulos/index");

let productsController = {

    show: function (req, res, next) {
        res.render('product', {
            auto: autos[req.params.id]
        });
    },
}

module.exports = productsController;