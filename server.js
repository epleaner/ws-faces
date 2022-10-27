import http from 'http';
import WebSocket, { WebSocketServer } from 'ws';
import { v4 as uuidv4 } from 'uuid';

const httpServer = http.createServer();
const wsPort = process.env.PORT || 3030;

httpServer.listen(wsPort, function () {
  console.log('listening on port ' + wsPort);
});

const wss = new WebSocketServer({
  server: httpServer,
  clientTracking: true,
});

//Listen for connections on the websocket
wss.on('connection', (ws) => {
  ws.id = uuidv4();

  console.log(`new connection (id ${ws.id}) | ${wss.clients.size} clients`);

  ws.send(JSON.stringify({ type: 'id', id: ws.id }));

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
