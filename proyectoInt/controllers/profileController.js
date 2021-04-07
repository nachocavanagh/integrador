let profileController = {
    index: function (req, res, next) {
        res.render('profile', { title: 'Express' });
    },
}

module.exports = profileController;