import http from 'http';
import WebSocket, { WebSocketServer } from 'ws';

const httpServer = http.createServer();
const wsPort = process.env.PORT || 3030;

httpServer.listen(wsPort, function () {
  console.log('listening on port ' + wsPort);
});

const wss = new WebSocketServer({
  server: httpServer,
});

// const wss = new WebSocketServer({ port: wsPort, clientTracking: true });
const connections = [];

// app.listen(port, () => {
//   console.log(`express server on ${port}`);
//   console.log(`ws server on ${wsPort}`);
// });

//Listen for connections on the websocket
wss.on('connection', (ws) => {
  console.log(`new connection | ${wss.clients.size} clients`);

  ws.on('message', function message(data, isBinary) {
    wss.clients.forEach(function each(client) {
      if (client !== ws && client.readyState === WebSocket.OPEN) {
        client.send(data, { binary: isBinary });
      }
    });
  });

  ws.on('close', () =>
    console.log(`connection closed | ${wss.clients.size} clients`)
  );
});
