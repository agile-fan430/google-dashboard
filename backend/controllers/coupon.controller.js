const Coupon = require('../models/coupon.model');

// Create and Save a new Coupon
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a Coupon
  const card = new Coupon({
    couponNo: req.body.couponNo,
    isUsed: req.body.isUsed
  });

  // Save Coupon in the database
  Coupon.create(card, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Card."
      });
    else res.send(data);
  });
};

exports.upload = (req, res) => {
  if(!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  var cards = req.body.coupons;
  var newCards = [];
  cards.forEach(element => {
    const card = new Coupon({
      couponNo: element.couponNo,
      isUsed: element.isUsed
    });

    // Save Coupon in the database
    Coupon.create(card, (err, res) => {
      newCards.push(res);
    });

    if(element == cards[cards.length - 1]) {
      res.send(newCards);
    }
  });
}

// Retrieve all Coupons from the database.
exports.findAll = (req, res) => {
  Coupon.getAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving Coupons."
      });
    else res.send(data);
  });
};

exports.findByPageAndLimit = (req, res) => {
  Coupon.findByPageAndLimit(req.query, (err, data) => {
    if(err) {
      if(err.kind === "not_found") {
        res.send({data:[], total: 0});
      } else {
        res.status(500).send({
          message: "Error retrieving Coupons on page " + req.query._page
        });
      }
    } else {
      Coupon.getAll((err, dataAll) => {
        if(err) {
          res.status(500).send({
            messsage: err.message || "Some error ocurred while retrieving cards"
          });
        } else {
          res.send({ data, total: dataAll.length });
        }
      })      
    }
  });
}

// Find a single Coupon with a CouponId
exports.findOne = (req, res) => {
  Coupon.findById(req.params.id, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Coupon with id ${req.params.id}.`
        });
      } else {
        res.status(500).send({
          message: "Error retrieving Coupon with id " + req.params.id
        });
      }
    } else res.send(data);
  });
};

// Update a Coupon identified by the CouponId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  Coupon.updateById(
    req.params.id,
    new Coupon(req.body),
    (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            message: `Not found Coupon with id ${req.params.id}.`
          });
        } else {
          res.status(500).send({
            message: "Error updating Coupon with id " + req.params.id
          });
        }
      } else res.send(data);
    }
  );
};

// Delete a Coupon with the specified CouponId in the request
exports.delete = (req, res) => {
  Coupon.remove(req.params.id, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Coupon with id ${req.params.id}.`
        });
      } else {
        res.status(500).send({
          message: "Could not delete Coupon with id " + req.params.id
        });
      }
    } else res.send({ message: `Coupon was deleted successfully!` });
  });
};

// Delete all Coupons from the database.
exports.deleteAll = (req, res) => {
  Coupon.removeAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Coupons."
      });
    else res.send({ message: `All Coupons were deleted successfully!` });
  });
};

//get random Coupons from the database.
exports.getRandomAssign = (req, res) => {
  Coupon.getRandomAssign((err, data) => {
    if(err) 
      if(err.kind === "not_found") {
        res.send([]);
      } else {
        res.status(500).send({
          message: "Error retrieving Coupons on page "
        });
      }
    else res.send(data);
  });
}

exports.usedOne = (req, res) => {
  Coupon.used(req.params.id, (err, data) => {
    if(err) 
      res.status(500).send({
        messag:
          err.message || "Some error occurred while getting random albums."
      });
    else res.send(data);
  });
}