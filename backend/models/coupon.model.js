const sql = require('./db.js');

const Coupon = function(card) {
  this.couponNo = card.couponNo;
  this.isUsed = card.isUsed;
}

Coupon.create = (newCoupon, result) => {
  sql.query("INSERT INTO coupons SET ?", newCoupon, (err, res) => {
    if(err) {
      console.log("error: ", error);
      result(err, null);
      return;
    }

    console.log("created Coupon: ", { id: res.insertId, ...newCoupon });
    result(null, { id: res.insertId, ...newCoupon });
  });
}

Coupon.findById = (cardId, result) => {
  sql.query(`SELECT * FROM coupons WHERE id = ${cardId}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found card: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found card with the id
    result({ kind: "not_found" }, null);
  });
};

Coupon.getRandomAssign = (result) => {
  sql.query(`SELECT * FROM coupons WHERE isUsed=0 ORDER BY RAND() LIMIT 1;`, (err, res) => {
    if(err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }
    if(res.length) {
      console.log("found coupon: ", res);
      result(null, res);
      return;
    }

    result({ kind: "not_found" }, null);
  });
}

Coupon.findByPageAndLimit = (query, result) => {
  let sqlquery = `SELECT * FROM coupons`;
  if(query.link_like) {
    sqlquery += ` WHERE link LIKE '%${query.link_like}%'`
  }
  sqlquery += ` LIMIT ${(query._page-1) * query._limit}, ${query._limit};`;
  sql.query(sqlquery, (err, res) => {
    if(err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }
    if(res.length) {
      console.log("found coupons: ", res);
      result(null, res);
      return;
    }

    result({ kind: "not_found" }, null);
  })
}

Coupon.getAll = result => {
  sql.query("SELECT * FROM coupons", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("coupons: ", res);
    result(null, res);
  });
};

Coupon.used = (id, result) => {
  sql.query("UPDATE coupons SET isUsed = ? WHERE id = ?", [true, id], (err, res) => {
    if(err) {
      result(null, err);
      return;
    }

    if(res.affectedRows == 0) {
      result({ kind: 'not_found'}, null);
      return ;
    }

    result(null, { id: id})
  })
}

Coupon.updateById = (id, card, result) => {
  sql.query(
    "UPDATE coupons SET couponNo = ?, isUsed = ? WHERE id = ?",
    [card.couponNo, card.isUsed, id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found card with the id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated card: ", { id: id, ...card });
      result(null, { id: id, ...card });
    }
  );
};

Coupon.remove = (id, result) => {
  sql.query("DELETE FROM coupons WHERE id = ?", id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found coupons with the id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted coupon with id: ", id);
    result(null, res);
  });
};


Coupon.removeAll = result => {
  sql.query("DELETE FROM coupons", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log(`deleted ${res.affectedRows} coupons`);
    result(null, res);
  });
};

Coupon.getAvailable = result => {
  sql.query("select count(id) as amount from coupons where isUsed = false;", (err, res) => {
    if(err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    result(null, res);
  });
}

module.exports = Coupon;