let indexController = {
    index: function (req, res, next) {
        res.render('index', { 
            title: 'Express',
            logueado: true,
    });
    },
}

module.exports = indexController;