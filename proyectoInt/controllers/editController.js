let editController = {
    index: function (req, res, next) {
        res.render('profile-edit', { title: 'Express' });
    },
}

module.exports = editController;