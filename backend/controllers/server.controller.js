const Server = require('../models/server.model.js');

exports.add = (req, res) => {
  if(!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  const server = new server({
    server_id: req.body.server_id,
    ip_address: req.body.ip_address,
    password: req.body.password
  });

  Server.add(server, (err, data) => {
    if(err) {
      res.status(500).send({
        message: "Error add Log"
      });
    }
    res.send(data)
  });
}

exports.upload = (req, res) => {
  if(!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  var servers = req.body.servers;
  var newServers = [];
  servers.forEach(element => {
    const server = new Server({
      server_id: element.server_id,
      ip_address: element.ip_address,
      password: element.password
    });

    Server.add(server, (err, result) => {
      newServers.push(result);
    });

    if(element == servers[servers.length - 1]) {
      res.send(newServers);
    }
  });
}

exports.findByPageAndLimit = (req, res) => {
  Server.findByPageAndLimit(req.query, (err, data) => {
    if(err) {
      if(err.kind === "not_found") {
        res.send({data:[], total: 0});
      } else {
        res.status(500).send({
          message: "Error retrieving servers on page " + req.query._page
        });
      }
    } else {
      Log.getAll((err, dataAll) => {
        if(err) {
          res.status(500).send({
            messsage: err.message || "Some error ocurred while retrieving servers"
          });
        } else {
          res.send({ data, total: dataAll.length });
        }
      })      
    }
  });
}

exports.update = (req, res) => {
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  Server.updateById(
    req.params.serverId,
    new Server(req.body),
    (err, data) => {
      if(err) {
        if(err.kind === "not_found") {
          res.status(404).send({
            message: `Not found Server with id ${req.params.serverId}.`
          });
        } else {
          res.status(500).send({
            message: "Error updating Server with id " + req.params.serverId
          });
        }
      } else res.send(data);
    }
  );
}

exports.delete = (req, res) => {
  Server.delete(req.params.serverId, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Server with id ${req.params.serverId}.`
        });
      } else {
        res.status(500).send({
          message: "Could not delete Server with id " + req.params.serverId
        });
      }
    } else res.send({ message: `Server was deleted successfully!` });
  })
}