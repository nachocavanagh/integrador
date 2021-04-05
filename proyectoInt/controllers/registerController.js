let registerController = {
    index: function (req, res, next) {
        res.render('register', { title: 'Express' });
    },
}

module.exports = registerController;