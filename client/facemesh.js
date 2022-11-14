/*
v2 = v - cp; // get a vector to v relative to the centerpoint
v2_scaled = v2 * scale; // scale the cp-relative-vector
v1_scaled = v2_scaled + cp; // translate the scaled vector back
*/

function detectMax() {
  try {
    window.max.outlet('Hello Max!');
    return true;
  } catch (e) {
    console.log('Max, where are you?');
  }
  return false;
}

function maxLog(s) {
  if (maxIsDetected) window.max.outlet(s);
  console.log(s);
}

let maxIsDetected = detectMax();
let gui;

let faceMeshSketch = function (p) {
  let ws;
  let wsConnected = false;

  setupWs();

  let video;
  let model;
  let modelReady = false;
  let predictions = [];

  let params = {
    ascii: false,
    zoom: false,
    chaos: false,
    fireworks: false,
    color: [p.random(0, 255), p.random(0, 255), p.random(0, 255)],
  };

  let translationX = 0,
    translationY = 0;

  let scaleFactor = 1,
    scaleMultiplier = 0.0002,
    scaleMin = 1,
    scaleMax = 7;

  p.setup = function () {
    p.createCanvas(innerWidth, innerHeight);

    setupTracking();

    if (maxIsDetected)
      document.getElementsByTagName('body')[0].style.overflow = 'hidden';

    gui = p.createGui(this, '🤖');
    gui.setPosition(p.width - 250, 20);
    gui.addObject(params);

    p.background(0);
  };

  p.draw = function () {
    p.background(0, 15);

    if (predictions.length) {
      if (params.zoom) keypoints = scaleFromCenter();
      else keypoints = predictions[0].scaledMesh;

      drawKeypoints(keypoints, params.color);

      if (wsConnected) {
        ws.send(
          JSON.stringify({
            type: 'facemeshCoordinates',
            id: ws.id,
            color: params.color,
            positions: keypoints,
          })
        );
      }
    }

    drawStatus();
  };

  function setupTracking() {
    console.log('setting up tracking');

    video = p.createCapture(p.VIDEO);
    video.size(p.width, p.height);

    model = ml5.facemesh(video, () => {
      modelReady = true;
      console.log('Model ready!');
      p.background(0);
    });

    model.on('predict', function (results) {
      predictions = results;
    });

    video.hide();
  }

  function setupWs() {
    const wsUrl = window.location.href.includes('facetoface.vercel.app')
      ? `wss://ws-fun.herokuapp.com/`
      : `ws://localhost:3030`;

    console.log('Attempting to establish ws connection with', wsUrl);

    ws = new WebSocket(wsUrl);

    ws.onopen = () => {
      wsConnected = true;
      console.log('ws connection established');
    };

    ws.onmessage = (event) => {
      const data = JSON.parse(event.data);

      if (data.type === 'id') ws.id = data.id;
      else if (data.type === 'facemeshCoordinates')
        drawKeypoints(data.positions, data.color);
    };
  }

  p.windowResized = function () {
    p.resizeCanvas(innerWidth, innerHeight);
  };

  function drawKeypoints(keypoints, color) {
    p.push();
    if (params.chaos) {
      translationX = p.random(0, p.width - p.width / 4);
      translationY = p.random(0, p.height - p.height / 4);
    }

    p.translate(translationX, translationY);

    for (let j = 0; j < keypoints.length; j += 1) {
      const [x, y] = keypoints[j];

      p.fill(color);
      if (params.ascii)
        p.text(
          p.random(
            '!@#$%^&*((()_+⁄€‹›ﬁﬂ‡°·‚——±{}|?><¯˘¿œ∑´®†¥¨ˆøπåß∂ƒ©≈∫˜µåß∂ƒ©'.split(
              ''
            )
          ),
          x,
          y
        );
      else p.ellipse(x, y, 2, 2);
    }
    p.pop();
  }

  function drawStatus() {
    p.noStroke();
    wsConnected ? p.fill('green') : p.fill('red');
    p.circle(25, 25, 5);

    p.fill('grey');
    if (!modelReady) p.text('loading...', 40, 28);
  }

  p.mouseClicked = function () {
    console.log(predictions);
  };

  function scaleFromCenter() {
    let center = findCenter();

    let scaledKeypoints = predictions[0].scaledMesh.map((keypoint) => {
      let v = p.createVector(keypoint[0], keypoint[1]);
      let v2 = v.sub(center);
      let v2_scaled = v2.mult((scaleFactor += scaleMultiplier));
      let v_scaled = v2_scaled.add(center);

      return [v_scaled.x, v_scaled.y, keypoint[2]];
    });

    if (scaleFactor > scaleMax) {
      scaleFactor = scaleMin;
      if (params.fireworks) {
        translationX = p.random(0, p.width - p.width / 4);
        translationY = p.random(0, p.height - p.height / 4);
      }
    }

    return scaledKeypoints;
  }

  function findCenter() {
    return predictions[0].scaledMesh
      .reduce(
        (p, c) => {
          p[0] += c[0];
          p[1] += c[1];
          return p;
        },
        [0, 0]
      )
      .map((xy) => xy / predictions[0].scaledMesh.length);
  }
};

const startFaceMesh = function () {
  return new p5(faceMeshSketch, document.getElementById('p5sketch'));
};
