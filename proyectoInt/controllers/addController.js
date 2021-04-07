let addController = {
    index: function (req, res, next) {
        res.render('product-add', { title: 'Express' });
    },
}

module.exports = addController;