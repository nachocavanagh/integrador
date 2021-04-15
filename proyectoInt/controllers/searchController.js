let autos = require('../modulos/index')

let searchController = {
    search: function (req, res, next) {

        let result = []
        for (let i = 0; i < autos.length; i++) {

            if (autos[i].nombre.includes(req.query.search)) {
                result.push(autos[i])
            }
        };
        res.render('search-results', {
            autos: result
        })

    },
}

module.exports = searchController;