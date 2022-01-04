const sql = require('./db.js');

const Server = function(server) {
  this.server_id = server.server_id;
  this.ip_address = server.ip_address;
  this.password = server.password;
  // this.install = server.install;
}


Server.add = (server, result) => {
  sql.query("INSERT INTO servers SET ?", server, (err, res) => {
    if(err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    result(null, { id: res.insertId, ...log });
  })
}

Server.findByPageAndLimit = (query, result) => {
  let sqlquery = `SELECT * from servers `;
  sqlquery += ` ORDER BY id DESC LIMIT ${(query._page-1) * query._limit}, ${query._limit};`;
  sql.query(sqlquery, (err, res) => {
    if(err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }
    if(res.length) {
      console.log("found servers: ", res);
      result(null, res);
      return;
    }

    result({ kind: "not_found" }, null);
  })
}

Server.getAll = result => {
  sql.query("SELECT * FROM logs", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    result(null, res);
  })
}

Server.update = (id, server, result) => {
  sql.query(
    "UPDATE servers SET server_id = ?, ip_address = ?, password = ? WHERE id = ?",
    [server.server_id, server.ip_address, server.password, id],
    (err, res) => {
      if(err) {
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Server with the id
        result({ kind: "not_found" }, null);
        return;
      }

      result(null, { id: id, ...server });
    }
  )
}

Server.delete = (id, result) => {
  sql.query("DELETE FROM servers WHERE id = ?", id, (err, res) => {
    if (err) {
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Server with the id
      result({ kind: "not_found" }, null);
      return;
    }

    result(null, res);
  });
}

module.exports = Server;