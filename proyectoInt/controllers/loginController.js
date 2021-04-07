let loginController = {
    index: function (req, res, next) {
        res.render('login', { title: 'Express' });
    },
}

module.exports = loginController;