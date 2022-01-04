module.exports = app => {
  const servers = require('../controllers/server.controller.js');

  app.post('/servers', servers.add);
  app.post('/servers/upload', servers.upload);
  app.get('/servers', servers.findByPageAndLimit);

  app.put('/servers/:serverId', servers.update);

  app.delete('/servers/:serverId', servers.delete);
}