let autos = require('../modulos/index')

let profileController = {
    index: function (req, res, next) {
        res.render('profile', {
            autos: autos,
        });
    },
}

module.exports = profileController;