let productsController = {
    index: function (req, res, next) {
        res.render('product', { title: 'Express' });
    },
}

module.exports = productsController;