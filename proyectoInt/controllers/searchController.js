let searchController = {
    index: function (req, res, next) {
        res.render('search-results', { title: 'Express' });
    },
}

module.exports = searchController;