function detectMax() {
  try {
    window.max.outlet('Hello Max!');
    return true;
  } catch (e) {
    console.log('Max, where are you?');
  }
  return false;
}

let s = function (p) {
  let ws;
  let wsConnected = false;

  function setupWs() {
    console.log('Attempting to establish ws connection');

    const url = 'localhost';
    const port = 3030;
    const protocol = 'ws';

    // const url = 'ws-fun.herokuapp.com/';
    // const port = 80;
    // const protocol = 'wss';

    const wsUrl = `${protocol}://${url}:${port}`;

    ws = new WebSocket(wsUrl);

    ws.onopen = () => {
      wsConnected = true;
      console.log('ws connection established');
    };

    ws.onmessage = (event) => {
      const data = JSON.parse(event.data);

      if (data.type === 'id') ws.id = data.id;
    };
  }

  setupWs();

  let maxIsDetected = detectMax();

  let handpose;
  let handposeReady = false;
  let video;
  let positions = [];

  let drawColor;

  function maxLog(s) {
    if (maxIsDetected) window.max.outlet(s);
    else console.log(s);
  }

  p.windowResized = function () {
    p.resizeCanvas(innerWidth, innerHeight);
  };

  p.setup = function () {
    p.createCanvas(innerWidth, innerHeight);

    setupTracking();

    drawColor = {
      r: Math.random() * 255,
      g: Math.random() * 255,
      b: Math.random() * 255,
    };

    if (maxIsDetected)
      document.getElementsByTagName('body')[0].style.overflow = 'hidden';

    p.background(0);
  };

  function setupTracking() {
    maxLog('setting up tracking');

    video = p.createCapture(p.VIDEO);
    video.size(p.width, p.height);

    handpose = ml5.handpose(video, () => {
      handposeReady = true;
      console.log('Handpose model ready!');
      p.background(0);
    });

    // This sets up an event that fills the global variable "positions"
    // with an array every time new hand poses are detected
    handpose.on('predict', (results) => {
      positions = results;
    });

    // Hide the video element, and just show the canvas
    video.hide();
  }

  // A function to draw ellipses over the detected keypoints
  function drawKeypoints(points, { r, g, b }) {
    for (let i = 0; i < points.length; i += 1) {
      const point = points[i];
      for (let j = 0; j < point.landmarks.length; j += 1) {
        const keypoint = point.landmarks[j];
        p.fill(r, g, b);
        p.noStroke();
        p.ellipse(keypoint[0], keypoint[1], 10, 10);
      }
    }
  }

  p.draw = function () {
    p.background(0, 25);

    if (positions.length) {
      drawKeypoints(positions, drawColor);

      if (wsConnected) {
        let data = positions[0].annotations;
        for (k in data) data[k] = Object.assign({}, data[k]);

        ws.send(
          JSON.stringify({
            type: 'handCoordinates',
            id: ws.id,
            drawColor,
            positions: data,
          })
        );
      }
    }

    p.noStroke();
    wsConnected ? p.fill('green') : p.fill('red');
    p.circle(25, 25, 5);

    p.fill('grey');
    if (!handposeReady) p.text('handpose loading...', 40, 28);
  };
};

let myp5 = new p5(s);
