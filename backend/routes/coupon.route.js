module.exports = app => {
  const coupons = require("../controllers/coupon.controller.js");

  // Create a new Customer
  app.post("/coupons", coupons.create);

  app.post("/coupons/upload", coupons.upload);

  // Retrieve page coupons by page number and page limit
  app.get("/coupons", coupons.findByPageAndLimit);

  // Retrieve a single Customer with customerId
  app.get("/coupons/:id", coupons.findOne);

  // Update a Customer with customerId
  app.put("/coupons/:id", coupons.update);

  // Delete a Customer with customerId
  app.delete("/coupons/:id", coupons.delete);

  // Create a new Customer
  app.delete("/coupons", coupons.deleteAll);
};