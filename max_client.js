const path = require('path');
const Max = require('max-api');
const WebSocket = require('ws');

const remoteConfig = {
  protocol: 'wss',
  host: 'ws-fun.herokuapp.com',
  wsPort: '80',
};

const localConfig = {
  protocol: 'ws',
  host: 'localhost',
  wsPort: '3030',
};

const { protocol, host, wsPort } = localConfig;

const wsUrl = `${protocol}://${host}:${wsPort}`;

console.log('Attempting to establish ws connection');

let wsConnected, ws;
let restartInterval = 5000;

let lipCoordinates = {};

const connect = () => {
  ws = new WebSocket(wsUrl);

  ws.onopen = () => {
    wsConnected = true;
    Max.post('ws connection established');
  };

  ws.onmessage = (event) => {
    const data = JSON.parse(event.data);

    switch (data.type) {
      case 'lipCoordinates': {
        data.positions = Object.assign({}, data.positions);
        lipCoordinates[data.id] = {
          upperLipY: data.upperLipY,
          lowerLipY: data.lowerLipY,
        };
        Max.outlet({ type: 'lipCoordinates', data: lipCoordinates });
        break;
      }
      case 'clientConnected': {
        Max.outlet({ type: 'clientConnected', data });
        break;
      }
      case 'clientDisconnected': {
        delete lipCoordinates[data.id];
        Max.outlet({ type: 'clientDisconnected', data });
        break;
      }
    }
  };

  ws.onclose = () => {
    Max.post('ws connected closed');

    if (restartInterval != 0) setTimeout(connect, restartInterval);
    else process.exit(1);
  };

  ws.onerror = (err) => {
    Max.post('ws error: ' + err.message);
    process.exit(1);
  };
};

const sendMessage = (msg) => {
  let jsonMsg = JSON.stringify(msg);

  Max.post(`sending: ${jsonMsg}`);

  ws.send(jsonMsg);
};

connect();

// MAX WORLD

Max.post(`loaded ${path.basename(__filename)} script`);
Max.post(`requesting ws connection to ${wsUrl}`);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler('bang', () => {
  Max.post(`Bang: ${new Date().toString()}`);
  sendMessage(`Bang: ${new Date().toString()}`);
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler('echo', (msg) => {
  Max.outlet(msg);
});

Max.addHandler('start', () => {
  Max.post('Started');
});

Max.addHandler('list', (...msg) => {
  Max.post('list', msg);

  // sendMessage(`Values: [${msg.join(', ')}]`);
});
