module.exports = app => {
  const album = require("../controllers/album.controller.js");
  const artist = require("../controllers/artist.controller.js");
  const customer = require("../controllers/customer.controller.js");
  const setting = require("../controllers/setting.controller.js");
  const track = require("../controllers/track.controller.js");
  const log = require('../controllers/logs.controller.js');
  const library = require('../controllers/library.controller.js');
  const card = require('../controllers/creditcard.controller.js');
  const coupon = require('../controllers/coupon.controller.js');
  const analytics = require('../controllers/analytics.controller.js');

  //--------------------Customers----------------------------//
  app.get("/api/customers", customer.getRandomAssign);

  app.post("/api/customers", customer.releaseBot);

  app.get("/api/customers/:id", customer.findById);

  app.get('/api/customers/changePassword', customer.changePassword);

  app.get('/api/customer/updateFund', customer.updateFunding);

  app.post('/api/customers/status', customer.updateStatus);

  app.post('/api/customers/error', customer.updateError);
  
  app.post('/api/customers/balance', customer.updateBalance);

  //---------------------Album-------------------------------//
  app.get("/api/album", album.getRandomAssign);

  //----------------------Artist------------------------------//
  app.get("/api/artist", artist.getRandomAssign);

  //----------------------Track-------------------------------//
  app.get("/api/track", track.getRandomAssign);

  //----------------------Setting-----------------------------//
  app.get("/api/setting", setting.get);

  //----------------------Logs--------------------------------//
  app.post("/api/logs", log.add);

  //----------------------Library------------------------------//
  app.get("/api/library", library.getRandomAssign);
  app.post("/api/library", library.create);
  //----------------------CreditCard-----------------------------//
  app.get('/api/card/getOne', card.getRandomAssign);
  app.get('/api/card/used/:id', card.usedOne);
  //-----------------------Coupon----------------------------//
  app.get('/api/coupon/getOne', coupon.getRandomAssign);
  app.get('/api/coupon/used/:id', coupon.usedOne);

  app.get('/api/analytics/add', analytics.addPlayAmount);
  app.get('/api/analytics/inc_active', analytics.addActiveAccount);
};