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

  let video;
  let poseNet;
  let posenetReady = false;
  let poses = [];

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

    poseNet = ml5.poseNet(video, () => {
      posenetReady = true;
      console.log('Posenet model ready!');
      p.background(0);
    });

    poseNet.on('pose', function (results) {
      poses = results;
    });

    video.hide();
  }

  // A function to draw ellipses over the detected keypoints
  function drawKeypoints(points, { r, g, b }) {
    // Loop through all the poses detected
    for (let i = 0; i < points.length; i++) {
      // For each pose detected, loop through all the keypoints
      let pose = points[i].pose;
      for (let j = 0; j < pose.keypoints.length; j++) {
        // A keypoint is an object describing a body part (like rightArm or leftShoulder)
        let keypoint = pose.keypoints[j];
        // Only draw an ellipse is the pose probability is bigger than 0.2
        if (keypoint.score > 0.2) {
          p.fill(r, g, b);
          p.noStroke();
          p.ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
        }
      }
    }
  }

  function drawSkeleton(points, { r, g, b }) {
    // Loop through all the skeletons detected
    for (let i = 0; i < points.length; i++) {
      let skeleton = points[i].skeleton;
      // For every skeleton, loop through all body connections
      for (let j = 0; j < skeleton.length; j++) {
        let partA = skeleton[j][0];
        let partB = skeleton[j][1];
        p.stroke(r, g, b);
        p.line(
          partA.position.x,
          partA.position.y,
          partB.position.x,
          partB.position.y
        );
      }
    }
  }

  p.draw = function () {
    p.background(0, 25);

    if (poses.length) {
      drawKeypoints(poses, drawColor);
      drawSkeleton(poses, drawColor);

      if (wsConnected) {
        let { keypoints, skeleton, score, ...data } = poses[0].pose;

        ws.send(
          JSON.stringify({
            type: 'bodyCoordinates',
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
    if (!posenetReady) p.text('posenet loading...', 40, 28);
  };

  p.mouseClicked = function () {
    console.log(poses);
  };
};

let myp5 = new p5(s);
