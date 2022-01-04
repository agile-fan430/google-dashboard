module.exports = app => {
    const analytics = require('../controllers/analytics.controller.js');

    app.get('/analytics', analytics.findByPageAndLimit);
}